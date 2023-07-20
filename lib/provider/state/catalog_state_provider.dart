import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/product.dart';

class CatalogStateNotifier extends StateNotifier<Map<Product, bool>> {
  CatalogStateNotifier() : super({});

  void toggleFavourites(Product product) {
    var isLiked = state[product];
    state[product] = isLiked ?? false;
  }
}

final catalogProvider =
    StateNotifierProvider<CatalogStateNotifier, Map<Product, bool>>((ref) {
  return CatalogStateNotifier();
});
