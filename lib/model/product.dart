import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String price,
    required double discount,
    @JsonKey(name: 'old_price') String? oldPrice,
    required String picture,
    // TODO add badges
    required double? rating,
    @JsonKey(name: 'reviews_count') required int reviewCount,
    required String brand,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
