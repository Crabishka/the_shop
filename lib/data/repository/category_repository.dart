import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/model/category.dart';

class CategoryRepository {
  final CategoryClient _api;

  CategoryRepository(this._api);

  Future<List<Category>> getCategories() {
    return _api.catalogCategories();
  }
}
