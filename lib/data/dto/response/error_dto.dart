import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_dto.freezed.dart';

part 'error_dto.g.dart';

@freezed
class ErrorDto with _$ErrorDto {
  const factory ErrorDto({
    int? success,
    int? status,
    int? error,
    @JsonKey(name: 'error_text') String? errorText,
    String? message,
  }) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorDtoFromJson(json);
}
