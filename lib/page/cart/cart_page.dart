import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/grey_divider.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var token = ref.watch(tokenRepositoryProvider).accessToken;
    return Scaffold(
      appBar: const FarmAppBar(title: 'Корзина'),
      body: token == null ? const NonAuthCartPage() : const AuthCartPage(),
    );
  }
}

class AuthCartPage extends ConsumerWidget {
  const AuthCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cart = ref.watch(cartProvider);
    var products = cart?.products.values.toList() ?? [];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index].product;
          var count = products[index].count;
          return SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Image.network(
                    product.picture,
                    height: 88,
                    width: 88,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                product.name,
                                maxLines: 2,
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_border,
                              size: 24,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Icon(
                              Icons.cancel_outlined,
                              size: 24,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${double.parse(product.price) * count} ₽',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  product.oldPrice == null
                                      ? ''
                                      : '${product.oldPrice} ₽',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ChangeCountButton(
                                  color: count > 1
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  onTap: () {},
                                ),
                                SizedBox(
                                    width: 32,
                                    height: 32,
                                    child:
                                        Center(child: Text(count.toString()))),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    color: Theme.of(context).primaryColor,
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const GreyDivider(
            indent: 0,
            endIndent: 0,
          );
        },
      ),
    );
  }
}

class ChangeCountButton extends StatelessWidget {
  const ChangeCountButton({
    super.key,
    required this.color,
    required this.onTap,
  });

  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        color: color,
        child: Center(
          child: Text(
            '-',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}

class NonAuthCartPage extends StatelessWidget {
  const NonAuthCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'В вашей корзине пока ничего нет',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.router.navigate(
                    const CatalogTab(
                      children: [CategoryRoute()],
                    ),
                  );
                },
                child: const Text('ПЕРЕЙТИ К ПОКУПКАМ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
