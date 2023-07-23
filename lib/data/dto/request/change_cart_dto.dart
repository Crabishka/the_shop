import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_cart_dto.g.dart';

part 'change_cart_dto.freezed.dart';

@freezed
class ChangeCartDto with _$ChangeCartDto {
  const factory ChangeCartDto({
    @JsonKey(name: 'product_id') int? productId,
    int? count,
  }) = _AddToCartDto;

  factory ChangeCartDto.fromJson(Map<String, dynamic> json) =>
      _$ChangeCartDtoFromJson(json);
}
