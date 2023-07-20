import 'dart:io';

import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/filter_product_dto.dart';
import 'package:the_shop_app/data/dto/pageable_dto.dart';
import 'package:the_shop_app/model/product.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(
    Dio dio, {
    String baseUrl,
  }) = _ProductClient;

  @POST('/catalog/products/')
  Future<PageableDto<Product>> catalogProducts(
      @Header("Content-Type") String content_type,
      @Body() FilterProductDto dto);
}
