import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/page/component/cart_component/auth_cart_page.dart';
import 'package:the_shop_app/page/component/cart_component/non_auth_cart_page.dart';
import 'package:the_shop_app/page/component/common/farm_add_bar.dart';

import 'package:the_shop_app/page/component/common/grey_divider.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var token = ref.watch(tokenRepositoryProvider)?.accessToken;
    return Scaffold(
      appBar: const FarmAppBar(title: 'Корзина'),
      body: token == null ? const NonAuthCartPage() : const AuthCartPage(),
    );
  }
}
