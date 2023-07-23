import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.g.dart';

part 'profile.freezed.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  const factory ProfileInfo({
    required String? city,
    @JsonKey(name: 'first_name') required String firstName,
    required String gender,
    required String email,
    required String phone,
    required String address,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}
