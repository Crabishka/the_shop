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
import 'package:the_shop_app/page/component/common/grey_divider.dart';
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
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  FutureBuilder(
                    future: productInfo,
                    builder: (context, snapshot) {
                      var loadingProduct = product;
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        if (loadingProduct != null) {
                          return StaticPart(
                              image: loadingProduct.picture,
                              productIndex: loadingProduct.id,
                              name: loadingProduct.name,
                              price: loadingProduct.price,
                              oldPrice: loadingProduct.oldPrice ?? '0');
                        }
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return const Center(
                            child: Text('Ошибка загрузки данных'));
                      }
                      final loadedProductInfo = snapshot.data;
                      if (loadedProductInfo != null) {
                        return StaticPart(
                            image: loadedProductInfo.picture,
                            productIndex: loadedProductInfo.id,
                            name: loadedProductInfo.name,
                            price: loadedProductInfo.price,
                            oldPrice: loadedProductInfo.oldPrice ?? '0');
                      }
                      return const Center(
                          child: Text('Ошибка загрузки данных'));
                    },
                  ),
                  FutureBuilder(
                    future: productInfo,
                    builder: (context, snapshot) {
                      final loadedProductInfo = snapshot.data;
                      if (loadedProductInfo != null) {
                        return LoadedProductPage(
                          brand: loadedProductInfo.brand,
                          description: loadedProductInfo.description,
                        );
                      }
                      return Container();
                    },
                  ),
                ],
              ),
            ),
          ]),
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

class StaticPart extends ConsumerWidget {
  const StaticPart(
      {required this.image,
      required this.productIndex,
      required this.name,
      required this.price,
      required this.oldPrice,
      Key? key})
      : super(key: key);

  final String image;
  final int productIndex;
  final String name;
  final String price;
  final String oldPrice;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductCount? productInCart =
        ref.watch(cartProvider)?.products[productIndex];
    var stateManager = ref.read(appStateManagerProvider);
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ProductPageImage(
            imageUrl: image,
          ),
        ),
        Text(
          name,
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
              '${getFormatterString(double.parse(price))} ₽',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              oldPrice != '0' ? '${getFormatterString(double.parse(oldPrice))} ₽' : '',
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

class LoadedProductPage extends ConsumerWidget {
  const LoadedProductPage({
    required this.description,
    required this.brand,
    Key? key,
  }) : super(key: key);

  final String description;
  final String brand;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        const SizedBox(
          height: 32,
          child: GreyDivider(
            indent: 0,
            endIndent: 0,
          ),
        ),
        const Text(
          'Описание и характеристики',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DescriptionRow(title: 'Описание:', text: description),
        DescriptionRow(title: 'Бренд:', text: brand),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Text(title),
            ),
            Expanded(
              flex: 6,
              child: Text(text),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
          child: GreyDivider(
            endIndent: 0,
            indent: 0,
          ),
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

