import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/async_notified_elevated_button.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/input_text_field.dart';
import 'package:the_shop_app/provider/di_providers.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FarmAppBar(title: 'Вход'),
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
            InputTextField(controller: _controller),
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
                    ref
                        .read(profileRepositoryProvider)
                        .firstAuthStep(email: _controller.text);
                  } catch (e) {
                    print(e);
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
