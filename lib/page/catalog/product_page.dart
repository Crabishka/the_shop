import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/data/utils.dart';
import 'package:the_shop_app/model/product.dart';
import 'package:the_shop_app/model/product_info.dart';
import 'package:the_shop_app/page/component/cart_component/change_count_button.dart';
import 'package:the_shop_app/page/component/common/farm_add_bar.dart';
import 'package:the_shop_app/page/component/const_param.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';

@RoutePage()
class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key, required this.id, this.product})
      : super(key: key);

  final int id;
  final Product? product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var productInfo =
        ref.read(productRepositoryProvider).getProductInfo(productId: id);
    return Hero(
      tag: product?.id ?? '',
      child: Scaffold(
        appBar: FarmAppBar(
          title: product?.name ?? 'Карточка продукта',
          isBack: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FutureBuilder(
            future: productInfo,
            builder: (context, snapshot) {
              var loadingProduct = product;
              if (snapshot.connectionState == ConnectionState.waiting) {
                if (loadingProduct != null) {
                  return LoadingProductPage(product: loadingProduct);
                }
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                if (loadingProduct != null) {
                  return LoadingProductPage(product: loadingProduct);
                }
                return const Center(child: Text('Ошибка загрузки данных'));
              }
              final loadedProductInfo = snapshot.data;
              if (loadedProductInfo == null) {
                if (loadingProduct != null) {
                  return LoadingProductPage(product: loadingProduct);
                }
              } else {
                return LoadedProductPage(productInfo: loadedProductInfo);
              }
              return const Center(child: Text('Ошибка загрузки данных'));
            },
          ),
        ),
      ),
    );
  }
}

class ProductPageImage extends StatelessWidget {
  const ProductPageImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class LoadedProductPage extends ConsumerWidget {
  const LoadedProductPage({
    Key? key,
    required this.productInfo,
  }) : super(key: key);

  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int productIndex = productInfo.id;
    ProductCount? productInCart =
        ref.watch(cartProvider)?.products[productIndex];
    var stateManager = ref.read(appStateManagerProvider);
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: CachedNetworkImage(
            imageUrl: productInfo.picture,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          productInfo.name ?? '',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '${getFormatterString(double.parse(productInfo.price))} ₽',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              '${getFormatterString(double.parse(productInfo.oldPrice ?? '0'))} ₽',
              style: const TextStyle(
                  fontSize: 18, decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        if (productInCart == null || productInCart.count == 0)
          AddToCartButton(
              stateManager: stateManager, productIndex: productIndex)
        else
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: buttonSize,
                child: ChangeCountButton(
                    color: Colors.black,
                    onTap: () {
                      var count = productInCart.count;
                      if (count > 1) {
                        stateManager.setCountProductInCart(
                            ref, productIndex, count - 1);
                      } else {
                        stateManager.removeProductFromCart(ref, productIndex);
                      }
                    },
                    text: '-'),
              )),
              Expanded(
                flex: 3,
                child: Container(
                  height: buttonSize,
                  color: const Color(0xFFF0F0F0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('В КОРЗИНЕ'),
                      Text(
                        productInCart.count.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: buttonSize,
                child: ChangeCountButton(
                    color: Colors.black,
                    onTap: () {
                      stateManager.addToCart(ref, productIndex);
                    },
                    text: '+'),
              )),
            ],
          ),
      ],
    );
  }
}

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

class LoadingProductPage extends ConsumerWidget {
  const LoadingProductPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: CachedNetworkImage(
            imageUrl: product.picture,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          product.name ?? '',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(product.price),
            Text(
              product.oldPrice ?? '',
              style: const TextStyle(
                  fontSize: 18, decoration: TextDecoration.lineThrough),
            ),
          ],
        )
      ],
    );
  }
}
