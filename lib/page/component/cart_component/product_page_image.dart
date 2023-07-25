import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductPageImage extends StatelessWidget {
  const ProductPageImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}