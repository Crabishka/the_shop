import 'package:flutter/material.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    super.key,
  });

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
