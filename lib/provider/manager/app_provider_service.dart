import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/data/utils.dart';
import 'package:the_shop_app/model/cart_info.dart';
import 'package:the_shop_app/provider/di_providers.dart';
import 'package:the_shop_app/provider/state/cart_state_provider.dart';
import 'package:the_shop_app/provider/state/profile_state_provider.dart';
import 'package:the_shop_app/router/app_router.dart';

/// некоторые функции, например login/logout задействуют сразу несколько состояний
/// например logout должен очистить список избранных, корзину, jwt токены
/// для таких задач и существует этот класс
/// ничего не хранит, отвечает только за связь с логикой/обработку ошибок
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
    // можно сделать проверку на наличие токена, чтобы UI был отзывчивее
    ref
        .read(cartRepositoryProvider)
        .addProductToCart(productId: productId)
        .then((value) => ref.read(cartProvider.notifier).setCart(value))
        .catchError((e) {
      if (e == '401') {
        buildErrorShowModalBottomSheet(
            ref.context, 'Авторизуйтесь, чтобы добавить товар.');
      }
    });
  }

  Future<void> setCountProductInCart(
      WidgetRef ref, int productId, int newCount) async {
    ref
        .read(cartRepositoryProvider)
        .setProductCount(productId: productId, count: newCount)
        .then((value) {
      ref.read(cartProvider.notifier).setCart(value);
    });
  }

  Future<void> removeProductFromCart(WidgetRef ref, int productId) async {
    ref
        .read(cartRepositoryProvider)
        .deleteProductFromCart(productId: productId)
        .then((value) {
      ref.read(cartProvider.notifier).setCart(value);
    });
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
    ref
        .read(orderRepositoryProvider)
        .createOrder(
            cartInfo: cartInfo,
            userName: userName,
            userPhone: userPhone,
            userEmail: userEmail,
            paymentId: paymentId,
            paymentType: paymentType)
        .then((value) {
      ref.read(cartProvider.notifier).setCart(null);
      AutoRouter.of(ref.context).pop();
    }).catchError((e) {
      showSnackBar(ref.context, 'Непредвиденная ошибка');
    });
  }
}

final appStateManagerProvider = Provider<AppStateManager>((ref) {
  return AppStateManager();
});
