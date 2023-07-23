import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/cart_client.dart';
import 'package:the_shop_app/data/dto/request/add_to_cart_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';

class CartRepository {
  final CartClient _api;

  CartRepository(this._api);

  Future<CartDto> addProductToCart({
    required int productId,
    required int count,
  }) async {
    try {
      return _api.cartCart(AddToCartDto(productId: productId, count: count));
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }
}
