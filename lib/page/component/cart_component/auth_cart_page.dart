import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:the_shop_app/data/utils.dart';
import 'package:the_shop_app/page/component/cart_component/cart_product_card.dart';
import 'package:the_shop_app/page/component/common/async_elevated_button.dart';
import 'package:the_shop_app/page/component/common/grey_divider.dart';
import 'package:the_shop_app/page/component/const_param.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

class AuthCartPage extends ConsumerWidget {
  const AuthCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cart = ref.watch(cartProvider);
    var products = cart?.products.values.toList() ?? [];
    return Stack(
      children: [
        ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            var product = products[index].product;
            var count = products[index].count;
            return Column(
              children: [
                CartProductCard(product: product, count: count),
                if (index == products.length - 1)
                  const SizedBox(
                    height: littleBottomSheetHeight,
                  )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
              child: GreyDivider(
                indent: 0,
                endIndent: 0,
              ),
            );
          },
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: littleBottomSheetHeight,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    )
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ИТОГО:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 1.44),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text('Скидка:'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${getFormatterString(double.parse(cart?.price ?? '0'))} ₽',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              ' ${countPrice(cart?.price ?? '0', cart?.oldPrice ?? '0')} ₽',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: AsyncElevatedButton(
                        callback: () async {
                          AutoRouter.of(context).navigate(const OrderRoute());
                        },
                        text: 'ОФОРМИТЬ ЗАКАЗ',
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }

  String countPrice(String price, String oldPrice) {
    return NumberFormat("#,###")
        .format(double.parse(price) - double.parse(oldPrice))
        .toString();
  }
}
