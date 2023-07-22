import 'package:flutter/material.dart';
import 'package:the_shop_app/model/banner.dart';
import 'package:the_shop_app/page/component/banner_component/clipped_image.dart';

class MarkdownBanner extends StatelessWidget {
  const MarkdownBanner({
    super.key,
    required this.banner,
  });

  final WindowBanner banner;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          banner.text,
          textAlign: TextAlign.start,
        ),
        if (banner.imageUrl.isNotEmpty)
          const SizedBox(
            height: 16,
          ),
        if (banner.imageUrl.isNotEmpty)
          AspectRatio(
            aspectRatio: 1.5,
            child: ClippedImage(imageUrl: banner.imageUrl),
          ),
      ],
    );
  }
}
