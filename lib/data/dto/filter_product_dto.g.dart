// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterProductDto _$$_FilterProductDtoFromJson(Map<String, dynamic> json) =>
    _$_FilterProductDto(
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_FilterProductDtoToJson(_$_FilterProductDto instance) =>
    <String, dynamic>{
      'category_ids': instance.categoryIds,
    };
