import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/request/change_cart_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';

part 'cart_client.g.dart';

@RestApi()
abstract class CartClient {
  factory CartClient(
    Dio dio, {
    String baseUrl,
  }) = _CartClient;

  /// всегда добавляет 1 количество товара
  @POST('/cart/cart/')
  @Headers({'Content-Type': 'application/json'})
  Future<CartDto> cartCart(@Body() ChangeCartDto dto);

  @POST('/cart/calculate/')
  @Headers({'Content-Type': 'application/json'})
  Future<CartDto> cartCalculate(@Body() ChangeCartDto dto);

  @PUT('/cart/cart/')
  @Headers({'Content-Type': 'application/json'})
  Future<CartDto> putCartCart(@Body() ChangeCartDto dto);

  @DELETE('/cart/cart/')
  @Headers({'Content-Type': 'application/json'})
  Future<CartDto> deleteCartCart(@Body() ChangeCartDto dto);
}
