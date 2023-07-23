import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_shop_app/data/dto/response/cart_dto.dart';

part 'cart_info.freezed.dart';

part 'cart_info.g.dart';

@freezed
class CartInfo with _$CartInfo {
  const factory CartInfo({
    required String price,
    @JsonKey(name: 'old_price') required String oldPrice,
    required int count,
    /// int - productId
    required Map<int, ProductCount> products,
  }) = _CartInfo;

  factory CartInfo.fromJson(Map<String, dynamic> json) =>
      _$CartInfoFromJson(json);
}
