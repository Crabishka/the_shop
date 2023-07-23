import 'package:flutter/material.dart';
import 'package:the_shop_app/page/component/const_param.dart';

class ChangeCountButton extends StatelessWidget {
  const ChangeCountButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.text,
  });

  final Color color;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: iconSize,
        height: iconSize,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
