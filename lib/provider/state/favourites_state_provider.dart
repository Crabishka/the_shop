import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/model/product.dart';

class FavouritesStateNotifier extends StateNotifier<Set<Product>> {
  FavouritesStateNotifier() : super({});

  void toggleFavourites(Product product) {
    state.add(product);
  }
}

final favouriteProvider =
    StateNotifierProvider<FavouritesStateNotifier, Set<Product>>((ref) {
  return FavouritesStateNotifier();
});
