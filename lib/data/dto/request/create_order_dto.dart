import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_dto.freezed.dart';
part 'create_order_dto.g.dart';

@freezed
class CreateOrderDto with _$CreateOrderDto {
  const factory CreateOrderDto({
    required List<ProductIdCount> products,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'user_phone') required String userPhone,
    @JsonKey(name: 'user_email') required String userEmail,
    @JsonKey(name: 'delivery_id') required String deliveryId,
    @JsonKey(name: 'delivery_type') required String deliveryType,
    @JsonKey(name: 'payment_id') required String paymentId,
    @JsonKey(name: 'payment_type') required String paymentType,
  }) = _CreateOrderDto;

  factory CreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDtoFromJson(json);
}

@freezed
class ProductIdCount with _$ProductIdCount {
  const factory ProductIdCount({
    @JsonKey(name: 'product_id') required String productId,
    required int count,
  }) = _ProductIdCount;

  factory ProductIdCount.fromJson(Map<String, dynamic> json) =>
      _$ProductIdCountFromJson(json);
}
