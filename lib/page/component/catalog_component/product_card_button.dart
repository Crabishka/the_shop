import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

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
        ref.read(appStateManagerProvider).addToCart(ref, product.id);
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
