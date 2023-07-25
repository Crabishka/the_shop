import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';

class AddToCartButton extends ConsumerWidget {
  const AddToCartButton({
    super.key,
    required this.stateManager,
    required this.productIndex,
  });

  final AppStateManager stateManager;
  final int productIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
          onPressed: () {
            stateManager.addToCart(ref, productIndex);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_basket_outlined),
              SizedBox(
                width: 8,
              ),
              Text(' В КОРЗИНУ'),
            ],
          )),
    );
  }
}