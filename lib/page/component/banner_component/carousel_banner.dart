import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/model/picture.dart';
import 'package:the_shop_app/page/component/banner_component/clipped_image.dart';

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
