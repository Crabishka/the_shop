import 'package:flutter/material.dart';

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
