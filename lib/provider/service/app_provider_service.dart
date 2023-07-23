import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';

/// некоторые функции, например login/logout задействуют сразу несколько состояний
/// например logout должен очистить список избранных, корзину, jwt токены
/// для таких задач и существует этот класс
/// ничего не хранит, отвечает только за "оркестрацию"
/// каждый метод принимает WidgetRef для получения нужных состояний (пока непонятно, насколько это плохо)
class AppProviderService {

  Future<void> onStart() async {

  }


  Future<void> loginByTokens(WidgetRef ref, TokenDto tokens) async {
    ref.read(tokenRepositoryProvider).saveTokens(tokens);
    final cart = await ref.read(cartRepositoryProvider).getCart();
    ref.read(cartProvider.notifier).setCart(cart);
  }

  Future<void> tryLoginIfTokenExist(WidgetRef ref) async {
    var token = ref.read(tokenRepositoryProvider).accessToken;
    if (token == null) {
      return;
    }
    final cart = await ref.read(cartRepositoryProvider).getCart();
    ref.read(cartProvider.notifier).setCart(cart);
    // также с избранными
  }

  void logout(WidgetRef ref) {
    ref.read(tokenRepositoryProvider).deleteTokens();
    ref.read(cartProvider.notifier).setCart(null);
  }

  Future<void> addToCart(WidgetRef ref, int productId, int count) async {
    var dto = await ref
        .read(cartRepositoryProvider)
        .addProductToCart(productId: productId);
    ref.read(cartProvider.notifier).setCart(dto);
  }
}

final appProvider = Provider<AppProviderService>((ref) {
  return AppProviderService();
});
