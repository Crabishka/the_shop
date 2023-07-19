import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable_dto.freezed.dart';

part 'pageable_dto.g.dart';

@Freezed(
  fromJson: true,
  genericArgumentFactories: true,
)
class PageableDto<T> with _$PageableDto<T> {
  const factory PageableDto({
    required int count,
    required int pages,
    required String? next,
    required String? prev,
    required List<T> results,
  }) = _PageableDto;

  factory PageableDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) converter,
  ) =>
      _$PageableDtoFromJson(json, converter);
}
