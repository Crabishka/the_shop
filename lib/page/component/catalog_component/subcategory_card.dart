import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/router/app_router.dart';

class SubcategoryCard extends StatelessWidget {
  const SubcategoryCard({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(CatalogRoute(categoryId: category.id));
      },
      child: Row(
        children: [
          Image.network(
            category.picture,
            width: 32,
            height: 32,
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
