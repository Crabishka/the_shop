// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageableDto<T> _$$_PageableDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PageableDto<T>(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_PageableDtoToJson<T>(
  _$_PageableDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
      'results': instance.results.map(toJsonT).toList(),
    };
