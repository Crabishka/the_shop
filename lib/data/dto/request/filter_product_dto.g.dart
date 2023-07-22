// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterProductDto _$$_FilterProductDtoFromJson(Map<String, dynamic> json) =>
    _$_FilterProductDto(
      brand: json['brand'] as String?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      search: json['search'] as String?,
      sortBy: json['sort_by'] as String?,
    );

Map<String, dynamic> _$$_FilterProductDtoToJson(_$_FilterProductDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  writeNotNull('category_ids', instance.categoryIds);
  writeNotNull('product_ids', instance.productIds);
  writeNotNull('search', instance.search);
  writeNotNull('sort_by', instance.sortBy);
  return val;
}
