// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorDto _$$_ErrorDtoFromJson(Map<String, dynamic> json) => _$_ErrorDto(
      success: json['success'] as int?,
      status: json['status'] as int?,
      error: json['error'] as int?,
      errorText: json['error_text'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorDtoToJson(_$_ErrorDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'error': instance.error,
      'error_text': instance.errorText,
      'message': instance.message,
    };
