// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartInfo _$CartInfoFromJson(Map<String, dynamic> json) {
  return _CartInfo.fromJson(json);
}

/// @nodoc
mixin _$CartInfo {
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String get oldPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// int - productId
  Map<int, ProductCount> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartInfoCopyWith<CartInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartInfoCopyWith<$Res> {
  factory $CartInfoCopyWith(CartInfo value, $Res Function(CartInfo) then) =
      _$CartInfoCopyWithImpl<$Res, CartInfo>;
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String oldPrice,
      int count,
      Map<int, ProductCount> products});
}

/// @nodoc
class _$CartInfoCopyWithImpl<$Res, $Val extends CartInfo>
    implements $CartInfoCopyWith<$Res> {
  _$CartInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = null,
    Object? count = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<int, ProductCount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartInfoCopyWith<$Res> implements $CartInfoCopyWith<$Res> {
  factory _$$_CartInfoCopyWith(
          _$_CartInfo value, $Res Function(_$_CartInfo) then) =
      __$$_CartInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String oldPrice,
      int count,
      Map<int, ProductCount> products});
}

/// @nodoc
class __$$_CartInfoCopyWithImpl<$Res>
    extends _$CartInfoCopyWithImpl<$Res, _$_CartInfo>
    implements _$$_CartInfoCopyWith<$Res> {
  __$$_CartInfoCopyWithImpl(
      _$_CartInfo _value, $Res Function(_$_CartInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = null,
    Object? count = null,
    Object? products = null,
  }) {
    return _then(_$_CartInfo(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<int, ProductCount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartInfo implements _CartInfo {
  const _$_CartInfo(
      {required this.price,
      @JsonKey(name: 'old_price') required this.oldPrice,
      required this.count,
      required final Map<int, ProductCount> products})
      : _products = products;

  factory _$_CartInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CartInfoFromJson(json);

  @override
  final String price;
  @override
  @JsonKey(name: 'old_price')
  final String oldPrice;
  @override
  final int count;

  /// int - productId
  final Map<int, ProductCount> _products;

  /// int - productId
  @override
  Map<int, ProductCount> get products {
    if (_products is EqualUnmodifiableMapView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_products);
  }

  @override
  String toString() {
    return 'CartInfo(price: $price, oldPrice: $oldPrice, count: $count, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartInfo &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, oldPrice, count,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartInfoCopyWith<_$_CartInfo> get copyWith =>
      __$$_CartInfoCopyWithImpl<_$_CartInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartInfoToJson(
      this,
    );
  }
}

abstract class _CartInfo implements CartInfo {
  const factory _CartInfo(
      {required final String price,
      @JsonKey(name: 'old_price') required final String oldPrice,
      required final int count,
      required final Map<int, ProductCount> products}) = _$_CartInfo;

  factory _CartInfo.fromJson(Map<String, dynamic> json) = _$_CartInfo.fromJson;

  @override
  String get price;
  @override
  @JsonKey(name: 'old_price')
  String get oldPrice;
  @override
  int get count;
  @override

  /// int - productId
  Map<int, ProductCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartInfoCopyWith<_$_CartInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
