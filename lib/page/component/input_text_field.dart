import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    this.isReadOnly = false,
    required TextEditingController controller,
    this.textHint = '',
  }) : _controller = controller;

  final bool isReadOnly;
  final String textHint;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: isReadOnly,
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
