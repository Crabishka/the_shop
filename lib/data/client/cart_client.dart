import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';

part 'cart_client.g.dart';

@RestApi()
abstract class CartClient {
  factory CartClient(
    Dio dio, {
    String baseUrl,
  }) = _CartClient;

  @POST('/cart/cart/')
  @Headers({'Content-Type': 'application/json'})
  Future<CartDto> cartCart(@Body() AddToCartDto);


}
