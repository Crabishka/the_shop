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
    var cartState = ref.watch(cartProvider);
    int count = cartState?.products[product.id]?.count ?? 0;
    return ElevatedButton(
      onPressed: () async {
        var token = ref.read(tokenRepositoryProvider)?.accessToken;
        if (token == null) {
          buildErrorShowModalBottomSheet(
              context, 'Авторизуйтесь, чтобы добавить товар.');
          return;
        }
        ref
            .read(appStateManagerProvider)
            .addToCart(ref, product.id)
            .catchError((e) {
          if (e == '401') {
            buildErrorShowModalBottomSheet(
                context, 'Авторизуйтесь, чтобы добавить товар.');
          }
        });
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

  Future<dynamic> buildErrorShowModalBottomSheet(
      BuildContext context, String text) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 52,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.navigate(const AuthRoute());
                    },
                    child: const Text('ВХОД / ЗАРЕГИСТРИРОВАТЬСЯ'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
