import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/page/component/cart_component/change_count_button.dart';
import 'package:the_shop_app/page/component/const_param.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';

class CartProductCard extends ConsumerWidget {
  const CartProductCard({
    super.key,
    required this.product,
    required this.count,
  });

  final CartProduct product;
  final int count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stateManager = ref.read(appStateManagerProvider);
    return SizedBox(
      height: cardHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Image.network(
              product.picture,
              height: imageSize,
              width: imageSize,
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
                      GestureDetector(
                        onTap: () {
                          stateManager.removeProductFromCart(ref, product.id);
                        },
                        child: const Icon(
                          Icons.cancel_outlined,
                          size: 24,
                        ),
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
                            '${double.parse(product.price).truncate() * count} ₽',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            product.oldPrice == null
                                ? ''
                                : '${double.parse(product.oldPrice!).truncate() * count} ₽',
                            style: const TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: iconSize,
                            width: iconSize,
                            child: ChangeCountButton(
                              color: count > 1
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              text: '-',
                              onTap: count > 1
                                  ? () {
                                      stateManager.setCountProductInCart(
                                          ref, product.id, count - 1);
                                    }
                                  : () {},
                            ),
                          ),
                          SizedBox(
                              width: iconSize,
                              height: iconSize,
                              child: Center(child: Text(count.toString()))),
                          SizedBox(
                            height: iconSize,
                            width: iconSize,
                            child: ChangeCountButton(
                                text: '+',
                                color: Theme.of(context).primaryColor,
                                onTap: () {
                                  stateManager.addToCart(ref, product.id);
                                }),
                          )
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
  }
}
