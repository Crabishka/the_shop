import 'package:dio/dio.dart';
import 'package:the_shop_app/data/client/profile_client.dart';
import 'package:the_shop_app/data/dto/request/email_auth_part1_dto.dart';

class ProfileRepository {
  final ProfileClient _api;

  ProfileRepository(this._api);

  Future<void> firstAuthStep({required String email}) async {
    try {
      await _api.authEmailPart1(EmailAuthPart1Dto(email: email, digits: 4));
    } catch (e) {
      final res = (e as DioException).response;
      if (res != null) throw res.statusCode.toString();

    }
  }
}
