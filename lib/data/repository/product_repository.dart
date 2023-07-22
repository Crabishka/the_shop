import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/product_client.dart';
import 'package:the_shop_app/data/dto/request/filter_product_dto.dart';
import 'package:the_shop_app/data/dto/response/pageable_dto.dart';

import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/model/product.dart';

class ProductRepository {
  final ProductClient _api;

  ProductRepository(this._api);

  Future<PageableDto<Product>> getCategories({required FilterProductDto dto}) {

    return _api.catalogProducts(dto);
  }
}
