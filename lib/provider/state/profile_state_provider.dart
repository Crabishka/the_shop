import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/model/profile.dart';

class ProfileStateNotifier extends StateNotifier<ProfileInfo?> {
  ProfileStateNotifier() : super(null);

  ProfileInfo? getProfileInfo() {
    // если null идем в репу, смотрим токен
    // если токен есть пытаемся получить
    // если ошибка, то предлагаем зарегаться
    return state;
  }

  void setProfileInfo() {}
}

final profileProvider =
    StateNotifierProvider<ProfileStateNotifier, ProfileInfo?>((ref) {
  return ProfileStateNotifier();
});
