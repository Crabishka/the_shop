import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
  }) = _Product;


  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}


