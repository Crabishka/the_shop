import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/model/profile.dart';

class ProfileStateNotifier extends StateNotifier<ProfileInfo?> {
  ProfileStateNotifier() : super(null);

  void setProfileInfo(ProfileInfo profileInfo) {
    state = profileInfo;
  }
}

final profileProvider =
    StateNotifierProvider<ProfileStateNotifier, ProfileInfo?>((ref) {
  return ProfileStateNotifier();
});
