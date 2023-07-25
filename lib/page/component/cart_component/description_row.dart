import 'package:flutter/material.dart';
import 'package:the_shop_app/page/component/common/grey_divider.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Text(title),
            ),
            Expanded(
              flex: 6,
              child: Text(text),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
          child: GreyDivider(
            endIndent: 0,
            indent: 0,
          ),
        ),
      ],
    );
  }
}