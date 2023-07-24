import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/router/app_router.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.subcategories != null) {
          context.router.navigate(SubcategoriesRoute(category: category));
        } else {
          context.router.navigate(CatalogRoute(categoryId: category.id));
        }
      },
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl : category.picture,
            width: 100,
            height: 100,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          ),

          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Text(
              category.name,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          const Icon(Icons.navigate_next)
        ],
      ),
    );
  }
}
