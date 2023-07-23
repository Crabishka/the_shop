// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) {
  return _ProfileInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfo {
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInfoCopyWith<ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoCopyWith<$Res> {
  factory $ProfileInfoCopyWith(
          ProfileInfo value, $Res Function(ProfileInfo) then) =
      _$ProfileInfoCopyWithImpl<$Res, ProfileInfo>;
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: 'first_name') String firstName,
      String gender,
      String email,
      String phone,
      String address});
}

/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res, $Val extends ProfileInfo>
    implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? firstName = null,
    Object? gender = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileInfoCopyWith<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  factory _$$_ProfileInfoCopyWith(
          _$_ProfileInfo value, $Res Function(_$_ProfileInfo) then) =
      __$$_ProfileInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: 'first_name') String firstName,
      String gender,
      String email,
      String phone,
      String address});
}

/// @nodoc
class __$$_ProfileInfoCopyWithImpl<$Res>
    extends _$ProfileInfoCopyWithImpl<$Res, _$_ProfileInfo>
    implements _$$_ProfileInfoCopyWith<$Res> {
  __$$_ProfileInfoCopyWithImpl(
      _$_ProfileInfo _value, $Res Function(_$_ProfileInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? firstName = null,
    Object? gender = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
  }) {
    return _then(_$_ProfileInfo(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileInfo implements _ProfileInfo {
  const _$_ProfileInfo(
      {required this.city,
      @JsonKey(name: 'first_name') required this.firstName,
      required this.gender,
      required this.email,
      required this.phone,
      required this.address});

  factory _$_ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileInfoFromJson(json);

  @override
  final String? city;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String address;

  @override
  String toString() {
    return 'ProfileInfo(city: $city, firstName: $firstName, gender: $gender, email: $email, phone: $phone, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInfo &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, city, firstName, gender, email, phone, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      __$$_ProfileInfoCopyWithImpl<_$_ProfileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileInfoToJson(
      this,
    );
  }
}

abstract class _ProfileInfo implements ProfileInfo {
  const factory _ProfileInfo(
      {required final String? city,
      @JsonKey(name: 'first_name') required final String firstName,
      required final String gender,
      required final String email,
      required final String phone,
      required final String address}) = _$_ProfileInfo;

  factory _ProfileInfo.fromJson(Map<String, dynamic> json) =
      _$_ProfileInfo.fromJson;

  @override
  String? get city;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  String get gender;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
