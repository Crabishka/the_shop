// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInfo _$$_ProfileInfoFromJson(Map<String, dynamic> json) =>
    _$_ProfileInfo(
      city: json['city'] as String?,
      firstName: json['first_name'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_ProfileInfoToJson(_$_ProfileInfo instance) =>
    <String, dynamic>{
      'city': instance.city,
      'first_name': instance.firstName,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
    };
