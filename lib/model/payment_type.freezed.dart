// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentType _$PaymentTypeFromJson(Map<String, dynamic> json) {
  return _PaymentType.fromJson(json);
}

/// @nodoc
mixin _$PaymentType {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTypeCopyWith<PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeCopyWith<$Res> {
  factory $PaymentTypeCopyWith(
          PaymentType value, $Res Function(PaymentType) then) =
      _$PaymentTypeCopyWithImpl<$Res, PaymentType>;
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      String description,
      String icon,
      String? link});
}

/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res, $Val extends PaymentType>
    implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = null,
    Object? icon = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTypeCopyWith<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  factory _$$_PaymentTypeCopyWith(
          _$_PaymentType value, $Res Function(_$_PaymentType) then) =
      __$$_PaymentTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      String description,
      String icon,
      String? link});
}

/// @nodoc
class __$$_PaymentTypeCopyWithImpl<$Res>
    extends _$PaymentTypeCopyWithImpl<$Res, _$_PaymentType>
    implements _$$_PaymentTypeCopyWith<$Res> {
  __$$_PaymentTypeCopyWithImpl(
      _$_PaymentType _value, $Res Function(_$_PaymentType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = null,
    Object? icon = null,
    Object? link = freezed,
  }) {
    return _then(_$_PaymentType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentType implements _PaymentType {
  const _$_PaymentType(
      {required this.id,
      required this.title,
      required this.type,
      required this.description,
      required this.icon,
      required this.link});

  factory _$_PaymentType.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTypeFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String description;
  @override
  final String icon;
  @override
  final String? link;

  @override
  String toString() {
    return 'PaymentType(id: $id, title: $title, type: $type, description: $description, icon: $icon, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, type, description, icon, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeCopyWith<_$_PaymentType> get copyWith =>
      __$$_PaymentTypeCopyWithImpl<_$_PaymentType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTypeToJson(
      this,
    );
  }
}

abstract class _PaymentType implements PaymentType {
  const factory _PaymentType(
      {required final String id,
      required final String title,
      required final String type,
      required final String description,
      required final String icon,
      required final String? link}) = _$_PaymentType;

  factory _PaymentType.fromJson(Map<String, dynamic> json) =
      _$_PaymentType.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String get description;
  @override
  String get icon;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeCopyWith<_$_PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}
