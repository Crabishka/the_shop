import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type.g.dart';

part 'payment_type.freezed.dart';

@freezed
class PaymentType with _$PaymentType {
  const factory PaymentType({
    required String id,
    required String title,
    required String type,
    required String description,
    required String icon,
    required String? link,
  }) = _PaymentType;

  factory PaymentType.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeFromJson(json);
}
