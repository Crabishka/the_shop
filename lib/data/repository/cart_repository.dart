import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/cart_client.dart';
import 'package:the_shop_app/data/dto/request/add_to_cart_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/model/cart_info.dart';

class CartRepository {
  final CartClient _api;

  CartRepository(this._api);

  Future<CartInfo> addProductToCart({
    required int productId,
  }) async {
    try {
      var cart =
          await _api.cartCart(AddToCartDto(productId: productId, count: 1));
      var map = {
        for (var element in cart.products) element.product.id: element
      };
      return CartInfo(
          price: cart.price,
          oldPrice: cart.price,
          count: cart.count,
          products: map);
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }

  Future<CartInfo> setProductCount(
      {required int productId, required int count}) async {
    try {
      var cart = await _api
          .putCartCart(AddToCartDto(productId: productId, count: count));
      var map = {
        for (var element in cart.products) element.product.id: element
      };
      return CartInfo(
          price: cart.price,
          oldPrice: cart.price,
          count: cart.count,
          products: map);
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }


  Future<CartInfo> getCart() async {
    try {
      var cart = await _api
          .cartCalculate();
      var map = {
        for (var element in cart.products) element.product.id: element
      };
      return CartInfo(
          price: cart.price,
          oldPrice: cart.price,
          count: cart.count,
          products: map);
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }
}
