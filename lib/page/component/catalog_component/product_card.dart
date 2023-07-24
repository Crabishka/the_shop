import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/page/catalog/product_page.dart';
import 'package:the_shop_app/page/component/catalog_component/product_card_button.dart';
import 'package:the_shop_app/router/app_router.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Hero(
      tag: product.id,
      child: InkWell(
        onTap: (){
          context.router.navigate(ProductRoute(id: product.id, product: product));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Center(
                child: CachedNetworkImage(
                  imageUrl : product.picture,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
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
        ),
      ),
    );
  }
}
