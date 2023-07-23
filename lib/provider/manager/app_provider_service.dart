import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/model/cart_info.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/provider/state/profile_state_provider.dart';

/// некоторые функции, например login/logout задействуют сразу несколько состояний
/// например logout должен очистить список избранных, корзину, jwt токены
/// для таких задач и существует этот класс
/// ничего не хранит, отвечает только за "оркестрацию"
/// каждый метод принимает WidgetRef для получения нужных состояний (пока непонятно, насколько это плохо)
class AppStateManager {
  Future<void> onStart(
    WidgetRef ref,
  ) async {
    await ref.read(tokenRepositoryProvider.notifier).initTokens();
    var token =
        await ref.read(tokenRepositoryProvider.notifier).getAccessToken();
    if (token == null) {
      return;
    }
    await _loginLogic(ref);
  }

  Future<void> _loginLogic(WidgetRef ref) async {
    final cart = await ref.read(cartRepositoryProvider).getCart();
    final profile = await ref.read(profileRepositoryProvider).getProfileInfo();
    ref.read(cartProvider.notifier).setCart(cart);
    ref.read(profileProvider.notifier).setProfileInfo(profile);
  }

  Future<void> loginByTokens(WidgetRef ref, TokenDto tokens) async {
    ref.read(tokenRepositoryProvider.notifier).saveTokens(tokens);
    await _loginLogic(ref);
  }

  void logout(WidgetRef ref) {
    ref.read(tokenRepositoryProvider.notifier).deleteTokens();
    ref.read(cartProvider.notifier).setCart(null);
  }

  Future<void> addToCart(WidgetRef ref, int productId) async {
    var dto = await ref
        .read(cartRepositoryProvider)
        .addProductToCart(productId: productId);
    ref.read(cartProvider.notifier).setCart(dto);
  }

  Future<void> setCountProductInCart(
      WidgetRef ref, int productId, int newCount) async {
    var dto = await ref
        .read(cartRepositoryProvider)
        .setProductCount(productId: productId, count: newCount);
    ref.read(cartProvider.notifier).setCart(dto);
  }

  Future<void> removeProductFromCart(WidgetRef ref, int productId) async {
    var dto = await ref
        .read(cartRepositoryProvider)
        .deleteProductFromCart(productId: productId);
    ref.read(cartProvider.notifier).setCart(dto);
  }

  Future<void> makeOrder(
    WidgetRef ref, {
    required CartInfo cartInfo,
    required String userName,
    required String userPhone,
    required String userEmail,
    required String paymentId,
    required String paymentType,
  }) async {
    await ref.read(orderRepositoryProvider).createOrder(
        cartInfo: cartInfo,
        userName: userName,
        userPhone: userPhone,
        userEmail: userEmail,
        paymentId: paymentId,
        paymentType: paymentType);
    ref.read(cartProvider.notifier).setCart(null);
  }
}

final appStateManagerProvider = Provider<AppStateManager>((ref) {
  return AppStateManager();
});
