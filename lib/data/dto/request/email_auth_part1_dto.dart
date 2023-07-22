import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_auth_part1_dto.g.dart';

part 'email_auth_part1_dto.freezed.dart';

@freezed
class EmailAuthPart1Dto with _$EmailAuthPart1Dto {
  const factory EmailAuthPart1Dto({
    required String email,
    required int digits,
  }) = _EmailAuthPart1Dto;

  factory EmailAuthPart1Dto.fromJson(Map<String, dynamic> json) =>
      _$EmailAuthPart1DtoFromJson(json);
}
