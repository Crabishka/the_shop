// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDto _$CartDtoFromJson(Map<String, dynamic> json) {
  return _CartDto.fromJson(json);
}

/// @nodoc
mixin _$CartDto {
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError; // ))
  List<ProductCount> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDtoCopyWith<CartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDtoCopyWith<$Res> {
  factory $CartDtoCopyWith(CartDto value, $Res Function(CartDto) then) =
      _$CartDtoCopyWithImpl<$Res, CartDto>;
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      int count,
      List<ProductCount> products});
}

/// @nodoc
class _$CartDtoCopyWithImpl<$Res, $Val extends CartDto>
    implements $CartDtoCopyWith<$Res> {
  _$CartDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartDtoCopyWith<$Res> implements $CartDtoCopyWith<$Res> {
  factory _$$_CartDtoCopyWith(
          _$_CartDto value, $Res Function(_$_CartDto) then) =
      __$$_CartDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      int count,
      List<ProductCount> products});
}

/// @nodoc
class __$$_CartDtoCopyWithImpl<$Res>
    extends _$CartDtoCopyWithImpl<$Res, _$_CartDto>
    implements _$$_CartDtoCopyWith<$Res> {
  __$$_CartDtoCopyWithImpl(_$_CartDto _value, $Res Function(_$_CartDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
  }) {
    return _then(_$_CartDto(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDto implements _CartDto {
  const _$_CartDto(
      {required this.price,
      @JsonKey(name: 'old_price') required this.oldPrice,
      required this.count,
      required final List<ProductCount> products})
      : _products = products;

  factory _$_CartDto.fromJson(Map<String, dynamic> json) =>
      _$$_CartDtoFromJson(json);

  @override
  final String price;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  final int count;
// ))
  final List<ProductCount> _products;
// ))
  @override
  List<ProductCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartDto(price: $price, oldPrice: $oldPrice, count: $count, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDto &&
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
  _$$_CartDtoCopyWith<_$_CartDto> get copyWith =>
      __$$_CartDtoCopyWithImpl<_$_CartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDtoToJson(
      this,
    );
  }
}

abstract class _CartDto implements CartDto {
  const factory _CartDto(
      {required final String price,
      @JsonKey(name: 'old_price') required final String? oldPrice,
      required final int count,
      required final List<ProductCount> products}) = _$_CartDto;

  factory _CartDto.fromJson(Map<String, dynamic> json) = _$_CartDto.fromJson;

  @override
  String get price;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  int get count;
  @override // ))
  List<ProductCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartDtoCopyWith<_$_CartDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCount _$ProductCountFromJson(Map<String, dynamic> json) {
  return _ProductCount.fromJson(json);
}

/// @nodoc
mixin _$ProductCount {
  int get count => throw _privateConstructorUsedError;
  CartProduct get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCountCopyWith<ProductCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCountCopyWith<$Res> {
  factory $ProductCountCopyWith(
          ProductCount value, $Res Function(ProductCount) then) =
      _$ProductCountCopyWithImpl<$Res, ProductCount>;
  @useResult
  $Res call({int count, CartProduct product});

  $CartProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductCountCopyWithImpl<$Res, $Val extends ProductCount>
    implements $ProductCountCopyWith<$Res> {
  _$ProductCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartProductCopyWith<$Res> get product {
    return $CartProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCountCopyWith<$Res>
    implements $ProductCountCopyWith<$Res> {
  factory _$$_ProductCountCopyWith(
          _$_ProductCount value, $Res Function(_$_ProductCount) then) =
      __$$_ProductCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, CartProduct product});

  @override
  $CartProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductCountCopyWithImpl<$Res>
    extends _$ProductCountCopyWithImpl<$Res, _$_ProductCount>
    implements _$$_ProductCountCopyWith<$Res> {
  __$$_ProductCountCopyWithImpl(
      _$_ProductCount _value, $Res Function(_$_ProductCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_$_ProductCount(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCount implements _ProductCount {
  const _$_ProductCount({required this.count, required this.product});

  factory _$_ProductCount.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCountFromJson(json);

  @override
  final int count;
  @override
  final CartProduct product;

  @override
  String toString() {
    return 'ProductCount(count: $count, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCount &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCountCopyWith<_$_ProductCount> get copyWith =>
      __$$_ProductCountCopyWithImpl<_$_ProductCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCountToJson(
      this,
    );
  }
}

abstract class _ProductCount implements ProductCount {
  const factory _ProductCount(
      {required final int count,
      required final CartProduct product}) = _$_ProductCount;

  factory _ProductCount.fromJson(Map<String, dynamic> json) =
      _$_ProductCount.fromJson;

  @override
  int get count;
  @override
  CartProduct get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCountCopyWith<_$_ProductCount> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  int get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError; // TODO add badges
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int get reviewCount => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {int id,
      String price,
      String discount,
      @JsonKey(name: 'old_price') String? oldPrice,
      String name,
      String article,
      String picture,
      double? rating,
      @JsonKey(name: 'reviews_count') int reviewCount,
      String brand});
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? discount = null,
    Object? oldPrice = freezed,
    Object? name = null,
    Object? article = null,
    Object? picture = null,
    Object? rating = freezed,
    Object? reviewCount = null,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String price,
      String discount,
      @JsonKey(name: 'old_price') String? oldPrice,
      String name,
      String article,
      String picture,
      double? rating,
      @JsonKey(name: 'reviews_count') int reviewCount,
      String brand});
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? discount = null,
    Object? oldPrice = freezed,
    Object? name = null,
    Object? article = null,
    Object? picture = null,
    Object? rating = freezed,
    Object? reviewCount = null,
    Object? brand = null,
  }) {
    return _then(_$_CartProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProduct implements _CartProduct {
  const _$_CartProduct(
      {required this.id,
      required this.price,
      required this.discount,
      @JsonKey(name: 'old_price') this.oldPrice,
      required this.name,
      required this.article,
      required this.picture,
      required this.rating,
      @JsonKey(name: 'reviews_count') required this.reviewCount,
      required this.brand});

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  final int id;
  @override
  final String price;
  @override
  final String discount;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  final String name;
  @override
  final String article;
  @override
  final String picture;
// TODO add badges
  @override
  final double? rating;
  @override
  @JsonKey(name: 'reviews_count')
  final int reviewCount;
  @override
  final String brand;

  @override
  String toString() {
    return 'CartProduct(id: $id, price: $price, discount: $discount, oldPrice: $oldPrice, name: $name, article: $article, picture: $picture, rating: $rating, reviewCount: $reviewCount, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, discount, oldPrice,
      name, article, picture, rating, reviewCount, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  const factory _CartProduct(
      {required final int id,
      required final String price,
      required final String discount,
      @JsonKey(name: 'old_price') final String? oldPrice,
      required final String name,
      required final String article,
      required final String picture,
      required final double? rating,
      @JsonKey(name: 'reviews_count') required final int reviewCount,
      required final String brand}) = _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  int get id;
  @override
  String get price;
  @override
  String get discount;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  String get name;
  @override
  String get article;
  @override
  String get picture;
  @override // TODO add badges
  double? get rating;
  @override
  @JsonKey(name: 'reviews_count')
  int get reviewCount;
  @override
  String get brand;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
