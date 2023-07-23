import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/profile_component/inpur_text_form_field.dart';

import 'package:the_shop_app/page/component/profile_component/phone_number_text_form_field.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class RegistrationPage extends ConsumerStatefulWidget {
  const RegistrationPage(this.email, {Key? key}) : super(key: key);
  final String email;

  @override
  ConsumerState<RegistrationPage> createState() => _RegistrationPageState();
}

const int phoneNumberLengthWithDecoration = 18;

class _RegistrationPageState extends ConsumerState<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  ValueNotifier<bool> isMale = ValueNotifier(false);
  ValueNotifier<bool> isFemale = ValueNotifier(false);

  @override
  void initState() {
    _emailController.text = widget.email;
    _phoneController.text = '+7';
    super.initState();
  }

  @override
  void dispose() {
    isMale.dispose();
    isFemale.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Регистрация',
        isBack: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              InputTextFormField(
                textHint: 'Населенный пункт',
                controller: _cityController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите Ваш населенный пункт';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              InputTextFormField(
                textHint: 'Иванов Иван',
                controller: _nameController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите Ваше ФИО';
                  }
                  if (value.length > 120) {
                    return 'ФИО слишком длинное';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              PhoneNumberInputTextFormField(
                controller: _phoneController,
                textHint: '+7 (000) 000-00-00',
                validator: (value) {
                  print(value);
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите номер телефона';
                  }
                  if (value.length < phoneNumberLengthWithDecoration) {
                    return 'Некорректный номер телефона';
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              InputTextFormField(
                textHint: 'email@mail.ru',
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите вашу почту';
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Некорректный email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ValueListenableBuilder(
                    valueListenable: isFemale,
                    builder: (context, value, child) {
                      return SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: value,
                          onChanged: (value) {
                            var val = value ?? false;
                            isFemale.value = val;
                            isMale.value = !val;
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('Муж'),
                  const SizedBox(
                    width: 32,
                  ),
                  ValueListenableBuilder(
                    valueListenable: isMale,
                    builder: (context, value, child) {
                      return SizedBox(
                        child: Checkbox(
                          value: value,
                          onChanged: (value) {
                            var val = value ?? false;
                            isMale.value = val;
                            isFemale.value = !val;
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('Жен'),
                ],
              ),
              const Spacer(),
              const Center(
                child: Text(
                  'Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        try {
                          await ref.read(profileRepositoryProvider).regUser(
                                firstName: _nameController.text,
                                secondName: _nameController.text,
                                email: _emailController.text,
                                phone: _phoneController.text,
                                gender: getGender(),
                              );
                          if (!mounted) return;
                          AutoRouter.of(context).navigate(CodeValidationRoute(
                              email: _emailController.text));
                        } catch (e) {
                          if (e == '403') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Такой пользователь уже существует.')));
                          } else if (e == '500') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Ошибка сервер, попробуйте позже.')));
                          }
                        }
                      }
                    },
                    child: Text('СОХРАНИТЬ'),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  String getGender() {
    if (isMale.value) {
      return 'male';
    }
    if (isFemale.value) {
      return 'female';
    }
    return 'unknown';
  }
}
