import 'dart:io';


import 'package:dio/dio.dart' hide Headers;

import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/request/filter_product_dto.dart';
import 'package:the_shop_app/data/dto/response/pageable_dto.dart';
import 'package:the_shop_app/model/product.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(
    Dio dio, {
    String baseUrl,
  }) = _ProductClient;


  ///     FIXME
  ///     retrofit_generator was downgrade to 6.0.0 'cause
  ///     https://github.com/trevorwang/retrofit.dart/issues/577
  ///     (still not resolved)
  ///
  @POST('/catalog/products/')
  @Headers({'Content-Type': 'application/json'})
  Future<PageableDto<Product>> catalogProducts(@Body() FilterProductDto dto);


}
