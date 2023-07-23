// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentType _$$_PaymentTypeFromJson(Map<String, dynamic> json) =>
    _$_PaymentType(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_PaymentTypeToJson(_$_PaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
      'icon': instance.icon,
      'link': instance.link,
    };
