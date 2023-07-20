import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';
import 'package:the_shop_app/model/category.dart';

part 'category_client.g.dart';

@RestApi()
abstract class CategoryClient {
  factory CategoryClient(
    Dio dio, {
    String baseUrl,
  }) = _CategoryClient;

  @GET('/catalog/categories/')
  Future<List<Category>> catalogCategories();
}
