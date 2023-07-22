import 'package:flutter/material.dart';

class InputTextFormField extends StatelessWidget {
  const InputTextFormField({
    super.key,
    required this.textHint,
    required this.controller,
    required this.validator,
  });

  final String textHint;
  final TextEditingController controller;
  final FormFieldValidator<String?> validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: textHint,
        border: InputBorder.none,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        filled: true,
        fillColor: const Color(0xFFF0F0F0),
      ),
    );
  }
}
