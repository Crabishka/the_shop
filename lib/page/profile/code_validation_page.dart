import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:the_shop_app/page/component/async_notified_elevated_button.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/profile_component/input_text_field.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/service/app_provider_service.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class CodeValidationPage extends ConsumerStatefulWidget {
  const CodeValidationPage({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  ConsumerState<CodeValidationPage> createState() => _CodeValidationPageState();
}

class _CodeValidationPageState extends ConsumerState<CodeValidationPage> {
  final _controller = TextEditingController();
  final _pinController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  ValueNotifier<bool> isActive = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _controller.text = widget.email;
    _pinController.addListener(_checkPin);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pinController.removeListener(_checkPin);
    _pinController.dispose();
    super.dispose();
  }

  void _checkPin() {
    if (_pinController.text.length == 4) {
      isActive.value = true;
    } else {
      isActive.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Вход',
        isBack: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Ваш email',
              ),
              const SizedBox(
                height: 16,
              ),
              InputTextField(
                controller: _controller,
                isReadOnly: true,
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: PinCodeTextField(
                      // мы его удаляем сами
                      autoDisposeControllers: false,
                      controller: _pinController,
                      key: formKey,
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.scale,
                      appContext: context,
                      length: 4,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              // TODO add timer
              const Text(
                'Отправить код повторно',
              ),
              const SizedBox(
                height: 32,
              ),
              ValueListenableBuilder(
                valueListenable: isActive,
                builder: (context, value, child) {
                  return SizedBox(
                    width: double.infinity,
                    child: AsyncNotifiedElevatedButton(
                      callback: () async {
                        ref
                            .read(profileRepositoryProvider)
                            .verifyCode(
                              email: widget.email,
                              code: _pinController.text,
                            )
                            .then((value) {
                          ref
                              .read(appProvider)
                              .loginByTokens(ref, value)
                              .then((value) {
                            context.router.navigate(const ProfileRoute());
                          });
                        }).catchError((e) {
                          if (e == '400') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Неправильный код'),
                              ),
                            );
                          }
                        });
                      },
                      isActiveNotifier: isActive,
                      text: 'ВОЙТИ',
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
