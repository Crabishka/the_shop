import 'package:flutter/material.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    super.key,
    this.indent = 16,
    this.endIndent = 16,
  });

  final int indent;
  final int endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: Colors.grey.withOpacity(0.54),
      indent: 16,
      endIndent: 16,
    );
  }
}
