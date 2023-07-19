// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Picture> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
  @useResult
  $Res call(
      {int id,
      String text,
      @JsonKey(name: 'image_url') String imageUrl,
      String link,
      String type,
      List<Picture> images});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? link = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$_BannerCopyWith(_$_Banner value, $Res Function(_$_Banner) then) =
      __$$_BannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String text,
      @JsonKey(name: 'image_url') String imageUrl,
      String link,
      String type,
      List<Picture> images});
}

/// @nodoc
class __$$_BannerCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$_Banner>
    implements _$$_BannerCopyWith<$Res> {
  __$$_BannerCopyWithImpl(_$_Banner _value, $Res Function(_$_Banner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? link = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_$_Banner(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Banner implements _Banner {
  const _$_Banner(
      {required this.id,
      required this.text,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.link,
      required this.type,
      required final List<Picture> images})
      : _images = images;

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$$_BannerFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String link;
  @override
  final String type;
  final List<Picture> _images;
  @override
  List<Picture> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Banner(id: $id, text: $text, imageUrl: $imageUrl, link: $link, type: $type, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Banner &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, imageUrl, link, type,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      __$$_BannerCopyWithImpl<_$_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  const factory _Banner(
      {required final int id,
      required final String text,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final String link,
      required final String type,
      required final List<Picture> images}) = _$_Banner;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get link;
  @override
  String get type;
  @override
  List<Picture> get images;
  @override
  @JsonKey(ignore: true)
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      throw _privateConstructorUsedError;
}
