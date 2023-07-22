// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_part2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailAuthPart2Dto _$EmailAuthPart2DtoFromJson(Map<String, dynamic> json) {
  return _EmailAuthPart2Dto.fromJson(json);
}

/// @nodoc
mixin _$EmailAuthPart2Dto {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAuthPart2DtoCopyWith<EmailAuthPart2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthPart2DtoCopyWith<$Res> {
  factory $EmailAuthPart2DtoCopyWith(
          EmailAuthPart2Dto value, $Res Function(EmailAuthPart2Dto) then) =
      _$EmailAuthPart2DtoCopyWithImpl<$Res, EmailAuthPart2Dto>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$EmailAuthPart2DtoCopyWithImpl<$Res, $Val extends EmailAuthPart2Dto>
    implements $EmailAuthPart2DtoCopyWith<$Res> {
  _$EmailAuthPart2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailAuthPart2DtoCopyWith<$Res>
    implements $EmailAuthPart2DtoCopyWith<$Res> {
  factory _$$_EmailAuthPart2DtoCopyWith(_$_EmailAuthPart2Dto value,
          $Res Function(_$_EmailAuthPart2Dto) then) =
      __$$_EmailAuthPart2DtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_EmailAuthPart2DtoCopyWithImpl<$Res>
    extends _$EmailAuthPart2DtoCopyWithImpl<$Res, _$_EmailAuthPart2Dto>
    implements _$$_EmailAuthPart2DtoCopyWith<$Res> {
  __$$_EmailAuthPart2DtoCopyWithImpl(
      _$_EmailAuthPart2Dto _value, $Res Function(_$_EmailAuthPart2Dto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_EmailAuthPart2Dto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailAuthPart2Dto implements _EmailAuthPart2Dto {
  const _$_EmailAuthPart2Dto({required this.email, required this.code});

  factory _$_EmailAuthPart2Dto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailAuthPart2DtoFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'EmailAuthPart2Dto(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAuthPart2Dto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAuthPart2DtoCopyWith<_$_EmailAuthPart2Dto> get copyWith =>
      __$$_EmailAuthPart2DtoCopyWithImpl<_$_EmailAuthPart2Dto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailAuthPart2DtoToJson(
      this,
    );
  }
}

abstract class _EmailAuthPart2Dto implements EmailAuthPart2Dto {
  const factory _EmailAuthPart2Dto(
      {required final String email,
      required final String code}) = _$_EmailAuthPart2Dto;

  factory _EmailAuthPart2Dto.fromJson(Map<String, dynamic> json) =
      _$_EmailAuthPart2Dto.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_EmailAuthPart2DtoCopyWith<_$_EmailAuthPart2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}
