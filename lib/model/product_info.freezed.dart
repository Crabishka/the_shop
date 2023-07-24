// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) {
  return _ProductInfo.fromJson(json);
}

/// @nodoc
mixin _$ProductInfo {
  int get id => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'need_buy_to_wholesale')
  int? get needBuyToWholesale => throw _privateConstructorUsedError;
  @JsonKey(name: 'wholesale_discount')
  int? get wholesaleDiscount => throw _privateConstructorUsedError;
  List<String> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res, ProductInfo>;
  @useResult
  $Res call(
      {int id,
      String picture,
      List<Category> categories,
      String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      String brand,
      String description,
      String name,
      String article,
      bool available,
      double? discount,
      int? sort,
      double? rating,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'need_buy_to_wholesale') int? needBuyToWholesale,
      @JsonKey(name: 'wholesale_discount') int? wholesaleDiscount,
      List<String> pictures});
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res, $Val extends ProductInfo>
    implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
    Object? categories = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? description = null,
    Object? name = null,
    Object? article = null,
    Object? available = null,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductInfoCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$_ProductInfoCopyWith(
          _$_ProductInfo value, $Res Function(_$_ProductInfo) then) =
      __$$_ProductInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String picture,
      List<Category> categories,
      String price,
      @JsonKey(name: 'old_price') String? oldPrice,
      String brand,
      String description,
      String name,
      String article,
      bool available,
      double? discount,
      int? sort,
      double? rating,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'need_buy_to_wholesale') int? needBuyToWholesale,
      @JsonKey(name: 'wholesale_discount') int? wholesaleDiscount,
      List<String> pictures});
}

/// @nodoc
class __$$_ProductInfoCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$_ProductInfo>
    implements _$$_ProductInfoCopyWith<$Res> {
  __$$_ProductInfoCopyWithImpl(
      _$_ProductInfo _value, $Res Function(_$_ProductInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
    Object? categories = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? description = null,
    Object? name = null,
    Object? article = null,
    Object? available = null,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
    Object? pictures = null,
  }) {
    return _then(_$_ProductInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductInfo implements _ProductInfo {
  const _$_ProductInfo(
      {required this.id,
      required this.picture,
      required final List<Category> categories,
      required this.price,
      @JsonKey(name: 'old_price') required this.oldPrice,
      required this.brand,
      required this.description,
      required this.name,
      required this.article,
      required this.available,
      required this.discount,
      required this.sort,
      required this.rating,
      @JsonKey(name: 'reviews_count') required this.reviewsCount,
      @JsonKey(name: 'need_buy_to_wholesale') required this.needBuyToWholesale,
      @JsonKey(name: 'wholesale_discount') required this.wholesaleDiscount,
      required final List<String> pictures})
      : _categories = categories,
        _pictures = pictures;

  factory _$_ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInfoFromJson(json);

  @override
  final int id;
  @override
  final String picture;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String price;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  final String brand;
  @override
  final String description;
  @override
  final String name;
  @override
  final String article;
  @override
  final bool available;
  @override
  final double? discount;
  @override
  final int? sort;
  @override
  final double? rating;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'need_buy_to_wholesale')
  final int? needBuyToWholesale;
  @override
  @JsonKey(name: 'wholesale_discount')
  final int? wholesaleDiscount;
  final List<String> _pictures;
  @override
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'ProductInfo(id: $id, picture: $picture, categories: $categories, price: $price, oldPrice: $oldPrice, brand: $brand, description: $description, name: $name, article: $article, available: $available, discount: $discount, sort: $sort, rating: $rating, reviewsCount: $reviewsCount, needBuyToWholesale: $needBuyToWholesale, wholesaleDiscount: $wholesaleDiscount, pictures: $pictures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.needBuyToWholesale, needBuyToWholesale) ||
                other.needBuyToWholesale == needBuyToWholesale) &&
            (identical(other.wholesaleDiscount, wholesaleDiscount) ||
                other.wholesaleDiscount == wholesaleDiscount) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      picture,
      const DeepCollectionEquality().hash(_categories),
      price,
      oldPrice,
      brand,
      description,
      name,
      article,
      available,
      discount,
      sort,
      rating,
      reviewsCount,
      needBuyToWholesale,
      wholesaleDiscount,
      const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      __$$_ProductInfoCopyWithImpl<_$_ProductInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductInfoToJson(
      this,
    );
  }
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {required final int id,
      required final String picture,
      required final List<Category> categories,
      required final String price,
      @JsonKey(name: 'old_price') required final String? oldPrice,
      required final String brand,
      required final String description,
      required final String name,
      required final String article,
      required final bool available,
      required final double? discount,
      required final int? sort,
      required final double? rating,
      @JsonKey(name: 'reviews_count') required final int? reviewsCount,
      @JsonKey(name: 'need_buy_to_wholesale')
      required final int? needBuyToWholesale,
      @JsonKey(name: 'wholesale_discount')
      required final int? wholesaleDiscount,
      required final List<String> pictures}) = _$_ProductInfo;

  factory _ProductInfo.fromJson(Map<String, dynamic> json) =
      _$_ProductInfo.fromJson;

  @override
  int get id;
  @override
  String get picture;
  @override
  List<Category> get categories;
  @override
  String get price;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  String get brand;
  @override
  String get description;
  @override
  String get name;
  @override
  String get article;
  @override
  bool get available;
  @override
  double? get discount;
  @override
  int? get sort;
  @override
  double? get rating;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'need_buy_to_wholesale')
  int? get needBuyToWholesale;
  @override
  @JsonKey(name: 'wholesale_discount')
  int? get wholesaleDiscount;
  @override
  List<String> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
