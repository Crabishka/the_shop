// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reg_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegUserDto _$RegUserDtoFromJson(Map<String, dynamic> json) {
  return _RegUserDto.fromJson(json);
}

/// @nodoc
mixin _$RegUserDto {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_name')
  String get secondName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegUserDtoCopyWith<RegUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegUserDtoCopyWith<$Res> {
  factory $RegUserDtoCopyWith(
          RegUserDto value, $Res Function(RegUserDto) then) =
      _$RegUserDtoCopyWithImpl<$Res, RegUserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'second_name') String secondName,
      String email,
      String phone,
      String gender,
      String birthday,
      String role});
}

/// @nodoc
class _$RegUserDtoCopyWithImpl<$Res, $Val extends RegUserDto>
    implements $RegUserDtoCopyWith<$Res> {
  _$RegUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? secondName = null,
    Object? email = null,
    Object? phone = null,
    Object? gender = null,
    Object? birthday = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegUserDtoCopyWith<$Res>
    implements $RegUserDtoCopyWith<$Res> {
  factory _$$_RegUserDtoCopyWith(
          _$_RegUserDto value, $Res Function(_$_RegUserDto) then) =
      __$$_RegUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'second_name') String secondName,
      String email,
      String phone,
      String gender,
      String birthday,
      String role});
}

/// @nodoc
class __$$_RegUserDtoCopyWithImpl<$Res>
    extends _$RegUserDtoCopyWithImpl<$Res, _$_RegUserDto>
    implements _$$_RegUserDtoCopyWith<$Res> {
  __$$_RegUserDtoCopyWithImpl(
      _$_RegUserDto _value, $Res Function(_$_RegUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? secondName = null,
    Object? email = null,
    Object? phone = null,
    Object? gender = null,
    Object? birthday = null,
    Object? role = null,
  }) {
    return _then(_$_RegUserDto(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegUserDto implements _RegUserDto {
  const _$_RegUserDto(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'second_name') required this.secondName,
      required this.email,
      required this.phone,
      required this.gender,
      required this.birthday,
      required this.role});

  factory _$_RegUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegUserDtoFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'second_name')
  final String secondName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String birthday;
  @override
  final String role;

  @override
  String toString() {
    return 'RegUserDto(firstName: $firstName, secondName: $secondName, email: $email, phone: $phone, gender: $gender, birthday: $birthday, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegUserDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, secondName, email, phone, gender, birthday, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegUserDtoCopyWith<_$_RegUserDto> get copyWith =>
      __$$_RegUserDtoCopyWithImpl<_$_RegUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegUserDtoToJson(
      this,
    );
  }
}

abstract class _RegUserDto implements RegUserDto {
  const factory _RegUserDto(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'second_name') required final String secondName,
      required final String email,
      required final String phone,
      required final String gender,
      required final String birthday,
      required final String role}) = _$_RegUserDto;

  factory _RegUserDto.fromJson(Map<String, dynamic> json) =
      _$_RegUserDto.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'second_name')
  String get secondName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get gender;
  @override
  String get birthday;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_RegUserDtoCopyWith<_$_RegUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
