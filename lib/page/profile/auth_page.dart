import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/async_notified_elevated_button.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/profile_component/input_text_field.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AuthPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<AuthPage> {
  final TextEditingController _controller = TextEditingController();
  ValueNotifier<bool> isActiveNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    isActiveNotifier.addListener(_checkEmail);
    _controller.addListener(_validateField);
  }

  void _checkEmail() {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_controller.text);
    isActiveNotifier.value = emailValid;
  }

  void _validateField() {
    _checkEmail();
  }

  @override
  void dispose() {
    isActiveNotifier.removeListener(_checkEmail);
    _controller.removeListener(_validateField);
    _controller.dispose();
    isActiveNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Вход',
        isBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
              child: Text('Пожалуйста, введите свой email.'),
            ),
            const Center(
              child: Text('Мы отправим Вам проверочный код.'),
            ),
            const SizedBox(
              height: 16,
            ),
            InputTextField(
                textHint: 'exmple@yandex.ru', controller: _controller),
            const SizedBox(
              height: 48,
            ),
            SizedBox(
              width: double.infinity,
              child: AsyncNotifiedElevatedButton(
                text: 'ПОЛУЧИТЬ КОД',
                isActiveNotifier: isActiveNotifier,
                callback: () async {
                  try {
                    await ref
                        .read(profileRepositoryProvider)
                        .firstAuthStep(email: _controller.text);
                    if (!mounted) return;
                    AutoRouter.of(context).navigate(
                      CodeValidationRoute(email: _controller.text),
                    );
                  } catch (e) {
                    if (e == '451') {
                      AutoRouter.of(context).navigate(
                        RegistrationRoute(email: _controller.text),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Неизвестная ошибка')));
                    }
                  }
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Center(
              child: Text(
                'Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании.',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
