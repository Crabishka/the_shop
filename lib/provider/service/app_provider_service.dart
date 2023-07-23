import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';

/// некоторые функции, например login/logout задействуют сразу несколько состояний
/// например logout должен очистить список израбнных, корзину, jwt токены
/// для таких задач и существует этот класс
/// ничего не хранит, отвечает только за "оркестрацию"
/// каждый метод принимает WidgetRef для получения нужных состояний (пока неизвестно, насколько это плохо)
class AppProviderService {
  void loginByTokens(WidgetRef ref, TokenDto tokens) {
    ref.read(tokenRepositoryProvider).saveTokens(tokens);
  }

  void logout(WidgetRef ref) {
    ref.read(tokenRepositoryProvider).deleteTokens();
    ref.read(cartProvider.notifier).setCart({});
  }

  Future<void> addToCart(WidgetRef ref, int productId, int count) async {
    var dto = await ref
        .read(cartRepositoryProvider)
        .addProductToCart(productId: productId, count: count);
    var map = {
      for (var element in dto.products) element.product.id: element.count
    };
    ref.read(cartProvider.notifier).setCart(map);
  }
}

final appProvider = Provider<AppProviderService>((ref) {
  return AppProviderService();
});
