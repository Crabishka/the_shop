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
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<int>? get productIds => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_by')
  String? get sortBy => throw _privateConstructorUsedError;

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
  $Res call(
      {String? brand,
      @JsonKey(name: 'category_ids') List<int>? categoryIds,
      @JsonKey(name: 'product_ids') List<int>? productIds,
      String? search,
      @JsonKey(name: 'sort_by') String? sortBy});
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
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {String? brand,
      @JsonKey(name: 'category_ids') List<int>? categoryIds,
      @JsonKey(name: 'product_ids') List<int>? productIds,
      String? search,
      @JsonKey(name: 'sort_by') String? sortBy});
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
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$_FilterProductDto(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_FilterProductDto implements _FilterProductDto {
  const _$_FilterProductDto(
      {this.brand,
      @JsonKey(name: 'category_ids') final List<int>? categoryIds,
      @JsonKey(name: 'product_ids') final List<int>? productIds,
      this.search,
      @JsonKey(name: 'sort_by') this.sortBy})
      : _categoryIds = categoryIds,
        _productIds = productIds;

  factory _$_FilterProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_FilterProductDtoFromJson(json);

  @override
  final String? brand;
  final List<int>? _categoryIds;
  @override
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds {
    final value = _categoryIds;
    if (value == null) return null;
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int>? get productIds {
    final value = _productIds;
    if (value == null) return null;
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? search;
  @override
  @JsonKey(name: 'sort_by')
  final String? sortBy;

  @override
  String toString() {
    return 'FilterProductDto(brand: $brand, categoryIds: $categoryIds, productIds: $productIds, search: $search, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterProductDto &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_productIds),
      search,
      sortBy);

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
      {final String? brand,
      @JsonKey(name: 'category_ids') final List<int>? categoryIds,
      @JsonKey(name: 'product_ids') final List<int>? productIds,
      final String? search,
      @JsonKey(name: 'sort_by') final String? sortBy}) = _$_FilterProductDto;

  factory _FilterProductDto.fromJson(Map<String, dynamic> json) =
      _$_FilterProductDto.fromJson;

  @override
  String? get brand;
  @override
  @JsonKey(name: 'category_ids')
  List<int>? get categoryIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int>? get productIds;
  @override
  String? get search;
  @override
  @JsonKey(name: 'sort_by')
  String? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_FilterProductDtoCopyWith<_$_FilterProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
