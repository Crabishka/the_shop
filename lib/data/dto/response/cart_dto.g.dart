// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDto _$$_CartDtoFromJson(Map<String, dynamic> json) => _$_CartDto(
      price: json['price'] as String,
      oldPrice: json['old_price'] as String?,
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartDtoToJson(_$_CartDto instance) =>
    <String, dynamic>{
      'price': instance.price,
      'old_price': instance.oldPrice,
      'count': instance.count,
      'products': instance.products,
    };

_$_ProductCount _$$_ProductCountFromJson(Map<String, dynamic> json) =>
    _$_ProductCount(
      count: json['count'] as int,
      product: CartProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductCountToJson(_$_ProductCount instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) =>
    _$_CartProduct(
      id: json['id'] as int,
      price: json['price'] as String,
      discount: json['discount'] as String,
      oldPrice: json['old_price'] as String?,
      name: json['name'] as String,
      article: json['article'] as String,
      picture: json['picture'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: json['reviews_count'] as int,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
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
