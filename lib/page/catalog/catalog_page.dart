import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/pageable_dto.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/pagination_list.dart';
import 'package:the_shop_app/provider/di_providers.dart';

@RoutePage()
class CatalogPage extends ConsumerWidget {
  const CatalogPage({required this.categoryId, Key? key}) : super(key: key);
  final int categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref
        .read(productRepositoryProvider)
        .getCategories(categoryIds: [categoryId]);
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Каталог',
      ),
      body: FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          var page = snapshot.data;
          if (snapshot.hasError || page == null) {
            return const Center(child: Text('Ошибка загрузки данных'));
          }
          final products =
              page.results; // TODO пофиксить заменив на PaginationList
          return GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2),
            itemBuilder: (context, index) {
              print(products[index].picture);
              return Image.network(products[index].picture);
            },
          );
        },
      ),
    );
  }
}
