// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Banner _$$_BannerFromJson(Map<String, dynamic> json) => _$_Banner(
      id: json['id'] as int,
      text: json['text'] as String,
      imageUrl: json['image_url'] as String,
      link: json['link'] as String,
      type: json['type'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image_url': instance.imageUrl,
      'link': instance.link,
      'type': instance.type,
      'images': instance.images,
    };
