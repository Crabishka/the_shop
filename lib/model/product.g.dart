// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      price: json['price'] as String,
      discount: (json['discount'] as num).toDouble(),
      oldPrice: json['old_price'] as String?,
      name: json['name'] as String,
      article: json['article'] as String,
      picture: json['picture'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: json['reviews_count'] as int,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'discount': instance.discount,
      'old_price': instance.oldPrice,
      'name': instance.name,
      'article': instance.article,
      'picture': instance.picture,
      'rating': instance.rating,
      'reviews_count': instance.reviewCount,
      'brand': instance.brand,
    };
