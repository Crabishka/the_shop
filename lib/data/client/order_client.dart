import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/request/change_cart_dto.dart';
import 'package:the_shop_app/data/dto/request/create_order_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';

part 'order_client.g.dart';

@RestApi()
abstract class OrderClient {
  factory OrderClient(
    Dio dio, {
    String baseUrl,
  }) = _OrderClient;

  @POST('/order/order/')
  @Headers({'Content-Type': 'application/json'})
  Future<void> orderOrder(@Body() CreateOrderDto dto);
}
