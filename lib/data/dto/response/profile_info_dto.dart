import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_dto.freezed.dart';
part 'profile_info_dto.g.dart';

@freezed
class ProfileInfoDto with _$ProfileInfoDto {
  const factory ProfileInfoDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'second_name') required String secondName,
    required String gender,
    required String role,
    required String? brand,
    required String? address,
    required String email,
    required String phone,
    required String birthday,
    @JsonKey(name: 'tg_chat_id') required String? tgChatId,
    @JsonKey(name: 'tg_chat_start_link') required String tgChatStartLink,
  }) = _ProfileInfoDto;

  factory ProfileInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoDtoFromJson(json);
}
