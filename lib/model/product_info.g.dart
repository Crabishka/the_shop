// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductInfo _$$_ProductInfoFromJson(Map<String, dynamic> json) =>
    _$_ProductInfo(
      id: json['id'] as int,
      picture: json['picture'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String,
      oldPrice: json['old_price'] as String?,
      brand: json['brand'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      article: json['article'] as String,
      available: json['available'] as bool,
      discount: (json['discount'] as num?)?.toDouble(),
      sort: json['sort'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: json['reviews_count'] as int?,
      needBuyToWholesale: json['need_buy_to_wholesale'] as int?,
      wholesaleDiscount: json['wholesale_discount'] as int?,
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductInfoToJson(_$_ProductInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'categories': instance.categories,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'brand': instance.brand,
      'description': instance.description,
      'name': instance.name,
      'article': instance.article,
      'available': instance.available,
      'discount': instance.discount,
      'sort': instance.sort,
      'rating': instance.rating,
      'reviews_count': instance.reviewsCount,
      'need_buy_to_wholesale': instance.needBuyToWholesale,
      'wholesale_discount': instance.wholesaleDiscount,
      'pictures': instance.pictures,
    };
