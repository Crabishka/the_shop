import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:the_shop_app/data/dto/request/filter_product_dto.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/page/component/common/farm_add_bar.dart';

import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

import '../component/catalog_component/product_card.dart';

@RoutePage()
class CatalogPage extends ConsumerWidget {
  const CatalogPage({required this.categoryId, Key? key}) : super(key: key);
  final int categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref
        .read(productRepositoryProvider)
        .getCategories(dto: FilterProductDto(categoryIds: [categoryId]));
    return Scaffold(
      appBar: const FarmAppBar(
        title: 'Каталог',
        isBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder(
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
                crossAxisCount: 2,
                crossAxisSpacing: 32,
                mainAxisSpacing: 16,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                var product = products[index];
                return ProductCard(product: product);
              },
            );
          },
        ),
      ),
    );
  }
}




