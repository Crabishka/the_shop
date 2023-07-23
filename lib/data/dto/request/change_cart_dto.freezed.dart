// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeCartDto _$ChangeCartDtoFromJson(Map<String, dynamic> json) {
  return _AddToCartDto.fromJson(json);
}

/// @nodoc
mixin _$ChangeCartDto {
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCartDtoCopyWith<ChangeCartDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCartDtoCopyWith<$Res> {
  factory $ChangeCartDtoCopyWith(
          ChangeCartDto value, $Res Function(ChangeCartDto) then) =
      _$ChangeCartDtoCopyWithImpl<$Res, ChangeCartDto>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') int? productId, int? count});
}

/// @nodoc
class _$ChangeCartDtoCopyWithImpl<$Res, $Val extends ChangeCartDto>
    implements $ChangeCartDtoCopyWith<$Res> {
  _$ChangeCartDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddToCartDtoCopyWith<$Res>
    implements $ChangeCartDtoCopyWith<$Res> {
  factory _$$_AddToCartDtoCopyWith(
          _$_AddToCartDto value, $Res Function(_$_AddToCartDto) then) =
      __$$_AddToCartDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') int? productId, int? count});
}

/// @nodoc
class __$$_AddToCartDtoCopyWithImpl<$Res>
    extends _$ChangeCartDtoCopyWithImpl<$Res, _$_AddToCartDto>
    implements _$$_AddToCartDtoCopyWith<$Res> {
  __$$_AddToCartDtoCopyWithImpl(
      _$_AddToCartDto _value, $Res Function(_$_AddToCartDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_AddToCartDto(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddToCartDto implements _AddToCartDto {
  const _$_AddToCartDto(
      {@JsonKey(name: 'product_id') this.productId, this.count});

  factory _$_AddToCartDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddToCartDtoFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final int? count;

  @override
  String toString() {
    return 'ChangeCartDto(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartDto &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartDtoCopyWith<_$_AddToCartDto> get copyWith =>
      __$$_AddToCartDtoCopyWithImpl<_$_AddToCartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddToCartDtoToJson(
      this,
    );
  }
}

abstract class _AddToCartDto implements ChangeCartDto {
  const factory _AddToCartDto(
      {@JsonKey(name: 'product_id') final int? productId,
      final int? count}) = _$_AddToCartDto;

  factory _AddToCartDto.fromJson(Map<String, dynamic> json) =
      _$_AddToCartDto.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartDtoCopyWith<_$_AddToCartDto> get copyWith =>
      throw _privateConstructorUsedError;
}
