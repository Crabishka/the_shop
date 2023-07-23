import 'package:flutter/material.dart';
import 'package:the_shop_app/page/component/profile_component/input_text_form_field.dart';
import 'package:the_shop_app/page/component/profile_component/phone_number_text_form_field.dart';
import 'package:the_shop_app/page/profile/registration_page.dart';

class InputTextFormFieldForEmail extends StatelessWidget {
  const InputTextFormFieldForEmail({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return InputTextFormField(
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
    );
  }
}

class InputTextFormFieldForPhone extends StatelessWidget {
  const InputTextFormFieldForPhone({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return PhoneNumberInputTextFormField(
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
    );
  }
}

class InputTextFormFieldForName extends StatelessWidget {
  const InputTextFormFieldForName({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return InputTextFormField(
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
    );
  }
}
