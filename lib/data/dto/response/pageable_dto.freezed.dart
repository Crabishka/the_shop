// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageableDto<T> _$PageableDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PageableDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PageableDto<T> {
  int get count => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableDtoCopyWith<T, PageableDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableDtoCopyWith<T, $Res> {
  factory $PageableDtoCopyWith(
          PageableDto<T> value, $Res Function(PageableDto<T>) then) =
      _$PageableDtoCopyWithImpl<T, $Res, PageableDto<T>>;
  @useResult
  $Res call(
      {int count, int? pages, String? next, String? prev, List<T> results});
}

/// @nodoc
class _$PageableDtoCopyWithImpl<T, $Res, $Val extends PageableDto<T>>
    implements $PageableDtoCopyWith<T, $Res> {
  _$PageableDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageableDtoCopyWith<T, $Res>
    implements $PageableDtoCopyWith<T, $Res> {
  factory _$$_PageableDtoCopyWith(
          _$_PageableDto<T> value, $Res Function(_$_PageableDto<T>) then) =
      __$$_PageableDtoCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int count, int? pages, String? next, String? prev, List<T> results});
}

/// @nodoc
class __$$_PageableDtoCopyWithImpl<T, $Res>
    extends _$PageableDtoCopyWithImpl<T, $Res, _$_PageableDto<T>>
    implements _$$_PageableDtoCopyWith<T, $Res> {
  __$$_PageableDtoCopyWithImpl(
      _$_PageableDto<T> _value, $Res Function(_$_PageableDto<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
    Object? results = null,
  }) {
    return _then(_$_PageableDto<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PageableDto<T> implements _PageableDto<T> {
  const _$_PageableDto(
      {required this.count,
      required this.pages,
      required this.next,
      required this.prev,
      required final List<T> results})
      : _results = results;

  factory _$_PageableDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PageableDtoFromJson(json, fromJsonT);

  @override
  final int count;
  @override
  final int? pages;
  @override
  final String? next;
  @override
  final String? prev;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PageableDto<$T>(count: $count, pages: $pages, next: $next, prev: $prev, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageableDto<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageableDtoCopyWith<T, _$_PageableDto<T>> get copyWith =>
      __$$_PageableDtoCopyWithImpl<T, _$_PageableDto<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PageableDtoToJson<T>(this, toJsonT);
  }
}

abstract class _PageableDto<T> implements PageableDto<T> {
  const factory _PageableDto(
      {required final int count,
      required final int? pages,
      required final String? next,
      required final String? prev,
      required final List<T> results}) = _$_PageableDto<T>;

  factory _PageableDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PageableDto<T>.fromJson;

  @override
  int get count;
  @override
  int? get pages;
  @override
  String? get next;
  @override
  String? get prev;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PageableDtoCopyWith<T, _$_PageableDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
