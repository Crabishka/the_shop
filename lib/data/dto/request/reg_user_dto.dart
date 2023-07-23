import 'package:freezed_annotation/freezed_annotation.dart';

part 'reg_user_dto.g.dart';

part 'reg_user_dto.freezed.dart';

@freezed
class RegUserDto with _$RegUserDto {
  const factory RegUserDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'second_name') required String secondName,
    required String email,
    required String phone,
    required String gender,
    required String birthday,
    required String role,
  }) = _RegUserDto;

  factory RegUserDto.fromJson(Map<String, dynamic> json) =>
      _$RegUserDtoFromJson(json);
}
