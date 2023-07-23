// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrderDto _$CreateOrderDtoFromJson(Map<String, dynamic> json) {
  return _CreateOrderDto.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderDto {
  List<ProductIdCount> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  String get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderDtoCopyWith<CreateOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderDtoCopyWith<$Res> {
  factory $CreateOrderDtoCopyWith(
          CreateOrderDto value, $Res Function(CreateOrderDto) then) =
      _$CreateOrderDtoCopyWithImpl<$Res, CreateOrderDto>;
  @useResult
  $Res call(
      {List<ProductIdCount> products,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType});
}

/// @nodoc
class _$CreateOrderDtoCopyWithImpl<$Res, $Val extends CreateOrderDto>
    implements $CreateOrderDtoCopyWith<$Res> {
  _$CreateOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? paymentId = null,
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductIdCount>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOrderDtoCopyWith<$Res>
    implements $CreateOrderDtoCopyWith<$Res> {
  factory _$$_CreateOrderDtoCopyWith(
          _$_CreateOrderDto value, $Res Function(_$_CreateOrderDto) then) =
      __$$_CreateOrderDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductIdCount> products,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType});
}

/// @nodoc
class __$$_CreateOrderDtoCopyWithImpl<$Res>
    extends _$CreateOrderDtoCopyWithImpl<$Res, _$_CreateOrderDto>
    implements _$$_CreateOrderDtoCopyWith<$Res> {
  __$$_CreateOrderDtoCopyWithImpl(
      _$_CreateOrderDto _value, $Res Function(_$_CreateOrderDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? paymentId = null,
    Object? paymentType = null,
  }) {
    return _then(_$_CreateOrderDto(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductIdCount>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrderDto implements _CreateOrderDto {
  const _$_CreateOrderDto(
      {required final List<ProductIdCount> products,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'user_phone') required this.userPhone,
      @JsonKey(name: 'user_email') required this.userEmail,
      @JsonKey(name: 'delivery_id') required this.deliveryId,
      @JsonKey(name: 'delivery_type') required this.deliveryType,
      @JsonKey(name: 'payment_id') required this.paymentId,
      @JsonKey(name: 'payment_type') required this.paymentType})
      : _products = products;

  factory _$_CreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrderDtoFromJson(json);

  final List<ProductIdCount> _products;
  @override
  List<ProductIdCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'user_phone')
  final String userPhone;
  @override
  @JsonKey(name: 'user_email')
  final String userEmail;
  @override
  @JsonKey(name: 'delivery_id')
  final String deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  final String deliveryType;
  @override
  @JsonKey(name: 'payment_id')
  final String paymentId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;

  @override
  String toString() {
    return 'CreateOrderDto(products: $products, userName: $userName, userPhone: $userPhone, userEmail: $userEmail, deliveryId: $deliveryId, deliveryType: $deliveryType, paymentId: $paymentId, paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderDto &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      userName,
      userPhone,
      userEmail,
      deliveryId,
      deliveryType,
      paymentId,
      paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderDtoCopyWith<_$_CreateOrderDto> get copyWith =>
      __$$_CreateOrderDtoCopyWithImpl<_$_CreateOrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderDtoToJson(
      this,
    );
  }
}

abstract class _CreateOrderDto implements CreateOrderDto {
  const factory _CreateOrderDto(
          {required final List<ProductIdCount> products,
          @JsonKey(name: 'user_name') required final String userName,
          @JsonKey(name: 'user_phone') required final String userPhone,
          @JsonKey(name: 'user_email') required final String userEmail,
          @JsonKey(name: 'delivery_id') required final String deliveryId,
          @JsonKey(name: 'delivery_type') required final String deliveryType,
          @JsonKey(name: 'payment_id') required final String paymentId,
          @JsonKey(name: 'payment_type') required final String paymentType}) =
      _$_CreateOrderDto;

  factory _CreateOrderDto.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderDto.fromJson;

  @override
  List<ProductIdCount> get products;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'user_phone')
  String get userPhone;
  @override
  @JsonKey(name: 'user_email')
  String get userEmail;
  @override
  @JsonKey(name: 'delivery_id')
  String get deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  String get deliveryType;
  @override
  @JsonKey(name: 'payment_id')
  String get paymentId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderDtoCopyWith<_$_CreateOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductIdCount _$ProductIdCountFromJson(Map<String, dynamic> json) {
  return _ProductIdCount.fromJson(json);
}

/// @nodoc
mixin _$ProductIdCount {
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductIdCountCopyWith<ProductIdCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdCountCopyWith<$Res> {
  factory $ProductIdCountCopyWith(
          ProductIdCount value, $Res Function(ProductIdCount) then) =
      _$ProductIdCountCopyWithImpl<$Res, ProductIdCount>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, int count});
}

/// @nodoc
class _$ProductIdCountCopyWithImpl<$Res, $Val extends ProductIdCount>
    implements $ProductIdCountCopyWith<$Res> {
  _$ProductIdCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductIdCountCopyWith<$Res>
    implements $ProductIdCountCopyWith<$Res> {
  factory _$$_ProductIdCountCopyWith(
          _$_ProductIdCount value, $Res Function(_$_ProductIdCount) then) =
      __$$_ProductIdCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') String productId, int count});
}

/// @nodoc
class __$$_ProductIdCountCopyWithImpl<$Res>
    extends _$ProductIdCountCopyWithImpl<$Res, _$_ProductIdCount>
    implements _$$_ProductIdCountCopyWith<$Res> {
  __$$_ProductIdCountCopyWithImpl(
      _$_ProductIdCount _value, $Res Function(_$_ProductIdCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_$_ProductIdCount(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductIdCount implements _ProductIdCount {
  const _$_ProductIdCount(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.count});

  factory _$_ProductIdCount.fromJson(Map<String, dynamic> json) =>
      _$$_ProductIdCountFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductIdCount(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductIdCount &&
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
  _$$_ProductIdCountCopyWith<_$_ProductIdCount> get copyWith =>
      __$$_ProductIdCountCopyWithImpl<_$_ProductIdCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductIdCountToJson(
      this,
    );
  }
}

abstract class _ProductIdCount implements ProductIdCount {
  const factory _ProductIdCount(
      {@JsonKey(name: 'product_id') required final String productId,
      required final int count}) = _$_ProductIdCount;

  factory _ProductIdCount.fromJson(Map<String, dynamic> json) =
      _$_ProductIdCount.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ProductIdCountCopyWith<_$_ProductIdCount> get copyWith =>
      throw _privateConstructorUsedError;
}
