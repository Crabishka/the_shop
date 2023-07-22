// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reg_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegUserDto _$$_RegUserDtoFromJson(Map<String, dynamic> json) =>
    _$_RegUserDto(
      firstName: json['first_name'] as String,
      secondName: json['second_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_RegUserDtoToJson(_$_RegUserDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'role': instance.role,
    };
