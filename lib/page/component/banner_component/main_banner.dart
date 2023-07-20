import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/model/banner.dart';
import 'package:the_shop_app/model/picture.dart';
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
          child: AspectRatio(
            aspectRatio: 1.5,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.network(
                banner.imageUrl,
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
            ),
          ),
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
          child: Column(
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
          ),
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
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
            onPressed: () {
              _launchURL(banner.link);
            },
            child: Text(
              textAlign: TextAlign.center,
              banner.text,
              style: Theme.of(context).brightness == Brightness.dark
                  ? const TextStyle(color: Colors.black)
                  : const TextStyle(color: Colors.white),
            ),
          ),
        );
      default:
        return Container();
    }
  }

  _launchURL(String url) async {
    final Uri path = Uri.parse(url);
    if (!await launchUrl(path)) {
      throw Exception('Could not launch $path');
    }
  }
}

class ClippedImage extends StatelessWidget {
  const ClippedImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Image.network(
        imageUrl,
        fit: BoxFit.fitWidth,
        alignment: Alignment.center,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class CarouselBanner extends StatefulWidget {
  const CarouselBanner({Key? key, required this.pictures}) : super(key: key);
  final List<Picture> pictures;

  @override
  State<CarouselBanner> createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;

  @override
  void dispose() {
    // CarouselController doesn't dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          items: widget.pictures
              .map((e) => ClippedImage(imageUrl: e.url))
              .toList(),
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.pictures.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => buttonCarouselController.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
