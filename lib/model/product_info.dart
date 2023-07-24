import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_shop_app/model/category.dart';


part 'product_info.g.dart';

part 'product_info.freezed.dart';

@freezed
class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    required int id,
    required String picture,
    required List<Category> categories,
    required String price,
    @JsonKey(name: 'old_price')
    required String? oldPrice,
    required String brand,
    required String description,
    required String name,
    required String article,
    required bool available,
    required double? discount,
    required int? sort,
    required double? rating,
    @JsonKey(name: 'reviews_count')
    required int? reviewsCount,
    @JsonKey(name: 'need_buy_to_wholesale')
    required int? needBuyToWholesale,
    @JsonKey(name: 'wholesale_discount')
    required int? wholesaleDiscount,
    required List<String> pictures,
}) = _ProductInfo;

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);
}
