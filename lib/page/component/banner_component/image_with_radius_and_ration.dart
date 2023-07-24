import 'package:cached_network_image/cached_network_image.dart';
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
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => Center(child: const CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          width: 40,
          height: 40,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
