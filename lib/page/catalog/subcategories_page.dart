import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/grey_divider.dart';
import 'package:the_shop_app/page/component/catalog_component/subcategory_card.dart';

@RoutePage()
class SubcategoriesPage extends ConsumerWidget {
  const SubcategoriesPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var subcategories = category.subcategories ?? [];
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Подкатегории',
      ),
      body: ListView.separated(
        itemCount: subcategories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.all(16),
              child: SubcategoryCard(category: subcategories[index]));
        },
        separatorBuilder: (BuildContext context, int index) {
          return const GreyDivider();
        },
      ),
    );
  }
}
