// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInfoDto _$$_ProfileInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileInfoDto(
      firstName: json['first_name'] as String,
      secondName: json['second_name'] as String,
      gender: json['gender'] as String,
      role: json['role'] as String,
      brand: json['brand'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String,
      birthday: json['birthday'] as String,
      tgChatId: json['tg_chat_id'] as String?,
      tgChatStartLink: json['tg_chat_start_link'] as String,
    );

Map<String, dynamic> _$$_ProfileInfoDtoToJson(_$_ProfileInfoDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'gender': instance.gender,
      'role': instance.role,
      'brand': instance.brand,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'tg_chat_id': instance.tgChatId,
      'tg_chat_start_link': instance.tgChatStartLink,
    };
