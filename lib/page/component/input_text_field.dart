
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        hintText: 'exmple@yandex.ru',
        border: InputBorder.none,
        contentPadding:
        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        filled: true,
        fillColor: Color(0xFFF0F0F0),
      ),
    );
  }
}
