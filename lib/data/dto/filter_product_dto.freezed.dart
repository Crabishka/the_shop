// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterProductDto _$FilterProductDtoFromJson(Map<String, dynamic> json) {
  return _FilterProductDto.fromJson(json);
}

/// @nodoc
mixin _$FilterProductDto {
// String? brand,
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterProductDtoCopyWith<FilterProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProductDtoCopyWith<$Res> {
  factory $FilterProductDtoCopyWith(
          FilterProductDto value, $Res Function(FilterProductDto) then) =
      _$FilterProductDtoCopyWithImpl<$Res, FilterProductDto>;
  @useResult
  $Res call({@JsonKey(name: 'category_ids') List<int>? categoryIds});
}

/// @nodoc
class _$FilterProductDtoCopyWithImpl<$Res, $Val extends FilterProductDto>
    implements $FilterProductDtoCopyWith<$Res> {
  _$FilterProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIds = freezed,
  }) {
    return _then(_value.copyWith(
      categoryIds: freezed == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterProductDtoCopyWith<$Res>
    implements $FilterProductDtoCopyWith<$Res> {
  factory _$$_FilterProductDtoCopyWith(
          _$_FilterProductDto value, $Res Function(_$_FilterProductDto) then) =
      __$$_FilterProductDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'category_ids') List<int>? categoryIds});
}

/// @nodoc
class __$$_FilterProductDtoCopyWithImpl<$Res>
    extends _$FilterProductDtoCopyWithImpl<$Res, _$_FilterProductDto>
    implements _$$_FilterProductDtoCopyWith<$Res> {
  __$$_FilterProductDtoCopyWithImpl(
      _$_FilterProductDto _value, $Res Function(_$_FilterProductDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIds = freezed,
  }) {
    return _then(_$_FilterProductDto(
      categoryIds: freezed == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterProductDto implements _FilterProductDto {
  const _$_FilterProductDto(
      {@JsonKey(name: 'category_ids') final List<int>? categoryIds})
      : _categoryIds = categoryIds;

  factory _$_FilterProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_FilterProductDtoFromJson(json);

// String? brand,
  final List<int>? _categoryIds;
// String? brand,
  @override
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds {
    final value = _categoryIds;
    if (value == null) return null;
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterProductDto(categoryIds: $categoryIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterProductDto &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterProductDtoCopyWith<_$_FilterProductDto> get copyWith =>
      __$$_FilterProductDtoCopyWithImpl<_$_FilterProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterProductDtoToJson(
      this,
    );
  }
}

abstract class _FilterProductDto implements FilterProductDto {
  const factory _FilterProductDto(
          {@JsonKey(name: 'category_ids') final List<int>? categoryIds}) =
      _$_FilterProductDto;

  factory _FilterProductDto.fromJson(Map<String, dynamic> json) =
      _$_FilterProductDto.fromJson;

  @override // String? brand,
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds;
  @override
  @JsonKey(ignore: true)
  _$$_FilterProductDtoCopyWith<_$_FilterProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
