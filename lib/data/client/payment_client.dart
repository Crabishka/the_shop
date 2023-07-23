import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/request/change_cart_dto.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';
import 'package:the_shop_app/model/payment_type.dart';

part 'payment_client.g.dart';

@RestApi()
abstract class PaymentClient {
  factory PaymentClient(
    Dio dio, {
    String baseUrl,
  }) = _PaymentClient;

  @POST('/payments/')
  @Headers({'Content-Type': 'application/json'})
  Future<List<PaymentType>> payments();
}
