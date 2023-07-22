import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_auth_part2_dto.freezed.dart';

part 'email_auth_part2_dto.g.dart';

@freezed
class EmailAuthPart2Dto with _$EmailAuthPart2Dto {
  const factory EmailAuthPart2Dto({
    required String email,
    required String code,
  }) = _EmailAuthPart2Dto;

  factory EmailAuthPart2Dto.fromJson(Map<String, dynamic> json) =>
      _$EmailAuthPart2DtoFromJson(json);
}
