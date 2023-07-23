import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/cart_client.dart';
import 'package:the_shop_app/data/dto/request/change_cart_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/model/cart_info.dart';

typedef GetCartCallback = Future<CartDto> Function(ChangeCartDto);

class CartRepository {
  final CartClient _api;

  CartRepository(this._api);

  Future<CartInfo> _returnCartInfo(
      ChangeCartDto dto, GetCartCallback callback) async {
    try {
      var cart = await callback(dto);
      var map = {
        for (var element in cart.products) element.product.id: element
      };
      return CartInfo(
          price: cart.price,
          oldPrice: cart.oldPrice ?? cart.price,
          count: cart.count,
          products: map);
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }

  Future<CartInfo> addProductToCart({
    required int productId,
  }) async {
    return _returnCartInfo(
        ChangeCartDto(productId: productId, count: 1), _api.cartCart);
  }

  Future<CartInfo> setProductCount(
      {required int productId, required int count}) async {
    return _returnCartInfo(
        ChangeCartDto(productId: productId, count: count), _api.putCartCart);
  }

  Future<CartInfo> getCart() async {
    return _returnCartInfo(const ChangeCartDto(), _api.cartCalculate);
  }

  Future<CartInfo> deleteProductFromCart({
    required int productId,
  }) async {
    return _returnCartInfo(
        ChangeCartDto(productId: productId, count: null), _api.deleteCartCart);
  }
}
