import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/model/cart_info.dart';
import 'package:the_shop_app/model/product.dart';

/// <productId, count>
class CartStateNotifier extends StateNotifier<CartInfo?> {
  CartStateNotifier() : super(null);

  void setCart(CartInfo? cart) {
    state = cart;
  }

  int? getCount(int productId) {
    return state?.products[productId]?.count;
  }
}

final cartProvider = StateNotifierProvider<CartStateNotifier, CartInfo?>((ref) {
  return CartStateNotifier();
});
