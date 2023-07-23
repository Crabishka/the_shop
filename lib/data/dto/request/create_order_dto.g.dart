// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOrderDto _$$_CreateOrderDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateOrderDto(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductIdCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      userName: json['user_name'] as String,
      userPhone: json['user_phone'] as String,
      userEmail: json['user_email'] as String,
      deliveryId: json['delivery_id'] as String,
      deliveryType: json['delivery_type'] as String,
      paymentId: json['payment_id'] as String,
      paymentType: json['payment_type'] as String,
    );

Map<String, dynamic> _$$_CreateOrderDtoToJson(_$_CreateOrderDto instance) =>
    <String, dynamic>{
      'products': instance.products,
      'user_name': instance.userName,
      'user_phone': instance.userPhone,
      'user_email': instance.userEmail,
      'delivery_id': instance.deliveryId,
      'delivery_type': instance.deliveryType,
      'payment_id': instance.paymentId,
      'payment_type': instance.paymentType,
    };

_$_ProductIdCount _$$_ProductIdCountFromJson(Map<String, dynamic> json) =>
    _$_ProductIdCount(
      productId: json['product_id'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_ProductIdCountToJson(_$_ProductIdCount instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'count': instance.count,
    };
