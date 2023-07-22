import 'package:flutter/material.dart';
import 'package:the_shop_app/model/banner.dart';
import 'package:the_shop_app/page/component/banner_component/carousel_banner.dart';
import 'package:the_shop_app/page/component/banner_component/image_with_radius_and_ration.dart';
import 'package:the_shop_app/page/component/banner_component/markdown_banner.dart';
import 'package:url_launcher/url_launcher.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({Key? key, required this.banner}) : super(key: key);
  final WindowBanner banner;

  @override
  Widget build(BuildContext context) {
    switch (banner.type) {
      case 'imageBanner':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ImageWithRadiusAndRation(
              image: banner.imageUrl, aspectRatio: 1.5, radius: 16),
        );
      case 'titleBanner':
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              banner.text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      case 'markdownBanner':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: MarkdownBanner(banner: banner),
        );
      case 'sliderBanner':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CarouselBanner(
            pictures: banner.images,
          ),
        );
      case 'buttonBanner':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {
              _launchURL(banner.link);
            },
            child: Text(
              textAlign: TextAlign.center,
              banner.text,
            ),
          ),
        );
      default:
        return Container();
    }
  }
}

_launchURL(String url) async {
  final Uri path = Uri.parse(url);
  if (!await launchUrl(path)) {
    throw Exception('Could not launch $path');
  }
}
