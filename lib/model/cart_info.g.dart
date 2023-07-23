// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartInfo _$$_CartInfoFromJson(Map<String, dynamic> json) => _$_CartInfo(
      price: json['price'] as String,
      oldPrice: json['old_price'] as String,
      count: json['count'] as int,
      products: (json['products'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), ProductCount.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CartInfoToJson(_$_CartInfo instance) =>
    <String, dynamic>{
      'price': instance.price,
      'old_price': instance.oldPrice,
      'count': instance.count,
      'products': instance.products.map((k, e) => MapEntry(k.toString(), e)),
    };
