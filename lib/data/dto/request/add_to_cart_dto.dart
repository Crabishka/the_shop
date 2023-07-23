import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_dto.g.dart';

part 'add_to_cart_dto.freezed.dart';

@freezed
class AddToCartDto with _$AddToCartDto {
  const factory AddToCartDto({
    @JsonKey(name: 'product_id') required int productId,
    required int count,
  }) = _AddToCartDto;

  factory AddToCartDto.fromJson(Map<String, dynamic> json) =>
      _$AddToCartDtoFromJson(json);
}
