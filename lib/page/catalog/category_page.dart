import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/page/component/grey_divider.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class CategoryPage extends ConsumerWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.read(categoryRepositoryProvider).getCategories();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Категории'),
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: categories,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            var categories = snapshot.data;
            if (snapshot.hasError || categories == null) {
              return const Center(child: Text('Ошибка загрузки данных'));
            }
            return ListView.separated(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 20, bottom: 25),
                  child: CategoryCard(category: categories[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const GreyDivider();
              },
            );
          },
        ),
      ),
    );
  }
}

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
        context.router.navigate(SubcategoriesRoute(category: category));
      },
      child: Row(
        children: [
          Image.network(
            category.picture,
            width: 100,
            height: 100,
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
