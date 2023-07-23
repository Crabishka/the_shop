import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/product.dart';

/// <productId, count>
class CartStateNotifier extends StateNotifier<Map<int, int>> {
  CartStateNotifier() : super({});

  Future<void> addToCart(int productId, int count) async {
    var currCount = state[productId] ?? 0;
    if (-count > currCount) {
      currCount = 0;
    } else {
      state[productId] = currCount + count;
    }
    state = {...state, productId: currCount + count};
  }

  void setCart(Map<int, int> cart){
    state = {...cart};
  }

  int? getCount(int productId) {
    return state[productId];
  }
}

final cartProvider =
    StateNotifierProvider<CartStateNotifier, Map<int, int>>((ref) {
  return CartStateNotifier();
});
