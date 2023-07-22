// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_part1_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailAuthPart1Dto _$EmailAuthPart1DtoFromJson(Map<String, dynamic> json) {
  return _EmailAuthPart1Dto.fromJson(json);
}

/// @nodoc
mixin _$EmailAuthPart1Dto {
  String get email => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAuthPart1DtoCopyWith<EmailAuthPart1Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthPart1DtoCopyWith<$Res> {
  factory $EmailAuthPart1DtoCopyWith(
          EmailAuthPart1Dto value, $Res Function(EmailAuthPart1Dto) then) =
      _$EmailAuthPart1DtoCopyWithImpl<$Res, EmailAuthPart1Dto>;
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class _$EmailAuthPart1DtoCopyWithImpl<$Res, $Val extends EmailAuthPart1Dto>
    implements $EmailAuthPart1DtoCopyWith<$Res> {
  _$EmailAuthPart1DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailAuthPart1DtoCopyWith<$Res>
    implements $EmailAuthPart1DtoCopyWith<$Res> {
  factory _$$_EmailAuthPart1DtoCopyWith(_$_EmailAuthPart1Dto value,
          $Res Function(_$_EmailAuthPart1Dto) then) =
      __$$_EmailAuthPart1DtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class __$$_EmailAuthPart1DtoCopyWithImpl<$Res>
    extends _$EmailAuthPart1DtoCopyWithImpl<$Res, _$_EmailAuthPart1Dto>
    implements _$$_EmailAuthPart1DtoCopyWith<$Res> {
  __$$_EmailAuthPart1DtoCopyWithImpl(
      _$_EmailAuthPart1Dto _value, $Res Function(_$_EmailAuthPart1Dto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_$_EmailAuthPart1Dto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailAuthPart1Dto implements _EmailAuthPart1Dto {
  const _$_EmailAuthPart1Dto({required this.email, required this.digits});

  factory _$_EmailAuthPart1Dto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailAuthPart1DtoFromJson(json);

  @override
  final String email;
  @override
  final int digits;

  @override
  String toString() {
    return 'EmailAuthPart1Dto(email: $email, digits: $digits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAuthPart1Dto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.digits, digits) || other.digits == digits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, digits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAuthPart1DtoCopyWith<_$_EmailAuthPart1Dto> get copyWith =>
      __$$_EmailAuthPart1DtoCopyWithImpl<_$_EmailAuthPart1Dto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailAuthPart1DtoToJson(
      this,
    );
  }
}

abstract class _EmailAuthPart1Dto implements EmailAuthPart1Dto {
  const factory _EmailAuthPart1Dto(
      {required final String email,
      required final int digits}) = _$_EmailAuthPart1Dto;

  factory _EmailAuthPart1Dto.fromJson(Map<String, dynamic> json) =
      _$_EmailAuthPart1Dto.fromJson;

  @override
  String get email;
  @override
  int get digits;
  @override
  @JsonKey(ignore: true)
  _$$_EmailAuthPart1DtoCopyWith<_$_EmailAuthPart1Dto> get copyWith =>
      throw _privateConstructorUsedError;
}
