import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_shop_app/model/product.dart';

part 'cart_dto.g.dart';

part 'cart_dto.freezed.dart';

@freezed
class CartDto with _$CartDto {
  const factory CartDto({
    required String price,
    @JsonKey(name: 'old_price') required String? oldPrice,
    required int count,
    // ))
    required List<ProductCount> products,
  }) = _CartDto;

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);
}

@freezed
class ProductCount with _$ProductCount {
  const factory ProductCount({
    required int count,
    required CartProduct product,
  }) = _ProductCount;

  factory ProductCount.fromJson(Map<String, dynamic> json) =>
      _$ProductCountFromJson(json);
}

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int id,
    required String price,
    required String discount,
    @JsonKey(name: 'old_price') String? oldPrice,
    required String name,
    required String article,
    required String picture,
    // TODO add badges
    required double? rating,
    @JsonKey(name: 'reviews_count') required int reviewCount,
    required String brand,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
