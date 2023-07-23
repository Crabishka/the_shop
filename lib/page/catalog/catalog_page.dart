import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:the_shop_app/data/dto/request/filter_product_dto.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/service/app_provider_service.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';

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

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Center(
            child: Image.network(
              product.picture,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${double.parse(product.price).truncateToDouble().toString()} ₽',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  product.oldPrice != null ? '${product.oldPrice} ₽' : '',
                  style: const TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            ProductCardButton(
              product: product,
            )
          ],
        ),
      ],
    );
  }
}

class ProductCardButton extends ConsumerWidget {
  const ProductCardButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // это отвратительно
    var cartState = ref.watch(cartProvider);
    int count = cartState[product.id] ?? 0;
    return ElevatedButton(
      onPressed: () {
        ref.read(appProvider).addToCart(ref, product.id, 1);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
      ),
      child: count == 0
          ? const Icon(
              Icons.shopping_bag_outlined,
              size: 32,
            )
          : Text(
              count.toString(),
              style: const TextStyle(fontSize: 14),
            ),
    );
  }
}
