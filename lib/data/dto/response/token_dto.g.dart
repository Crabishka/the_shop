// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenDto _$$_TokenDtoFromJson(Map<String, dynamic> json) => _$_TokenDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_TokenDtoToJson(_$_TokenDto instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
