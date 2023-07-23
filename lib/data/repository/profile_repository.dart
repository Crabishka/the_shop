import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/profile_client.dart';
import 'package:the_shop_app/data/dto/request/email_auth_part1_dto.dart';
import 'package:intl/intl.dart';
import 'package:the_shop_app/data/dto/request/email_auth_part2_dto.dart';
import 'package:the_shop_app/data/dto/request/reg_user_dto.dart';
import 'package:the_shop_app/data/dto/response/profile_info_dto.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/model/profile.dart';

class ProfileRepository {
  final ProfileClient _api;

  ProfileRepository(this._api);

  /// 451 - user doesn't exist
  /// 400 - invalid data
  Future<void> firstAuthStep({required String email}) async {
    try {
      await _api.authEmailPart1(EmailAuthPart1Dto(email: email, digits: 4));
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }

  /// 400 - wrong code
  Future<TokenDto> verifyCode(
      {required String email, required String code}) async {
    try {
      var token = await _api
          .authEmailPart2(EmailAuthPart2Dto(email: email, code: code));
      return token;
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }

  /// 403 - user exist
  /// 500 - invalid data
  Future<void> regUser({
    required String firstName,
    required String secondName,
    required String email,
    required String phone,
    required String gender,
    // TODO
    String birthday = '1970-01-01',
    String role = 'client',
  }) async {
    try {
      await _api.authRegister(RegUserDto(
          firstName: firstName,
          secondName: secondName,
          email: email,
          phone: phone,
          gender: gender,
          birthday: birthday,
          role: role));
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
    }
  }

  Future<ProfileInfoDto> getProfileInfo() async {
    try {
      var dto = await _api.authUser();
      return dto;
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();
      throw 'unknown';
    }
  }
}
