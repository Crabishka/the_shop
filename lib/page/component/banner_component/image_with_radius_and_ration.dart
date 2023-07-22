import 'package:flutter/material.dart';

class ImageWithRadiusAndRation extends StatelessWidget {
  const ImageWithRadiusAndRation({
    super.key,
    required this.aspectRatio,
    required this.radius,
    required this.image,
  });

  final double aspectRatio;
  final double radius;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: Image.network(
          image,
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
