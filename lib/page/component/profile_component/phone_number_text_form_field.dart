import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberInputTextFormField extends StatelessWidget {
  PhoneNumberInputTextFormField({
    super.key,
    required this.textHint,
    required this.controller,
    required this.validator,
  });

  final String textHint;
  final TextEditingController controller;
  final FormFieldValidator<String?> validator;

  final maskFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: [maskFormatter],
      validator: validator,
      keyboardType: TextInputType.phone,
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
