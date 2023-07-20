import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/product_client.dart';
import 'package:the_shop_app/data/dto/filter_product_dto.dart';
import 'package:the_shop_app/data/dto/pageable_dto.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/model/product.dart';

class ProductRepository {
  final ProductClient _api;

  ProductRepository(this._api);

  Future<PageableDto<Product>> getCategories({
    String? brand,
    List<int>? categoryIds,
    List<int>? productIds,
    String? search,
    String? sortBy,
  }) {
    final dto = FilterProductDto(
      // brand: brand,
      categoryIds: categoryIds,
      // productIds: productIds,
      // search: search,
      // sortBy: sortBy,
    );
    return _api.catalogProducts('application/json', dto);
  }
}
