import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:the_shop_app/data/dto/request/email_auth_part1_dto.dart';
import 'package:the_shop_app/data/dto/request/email_auth_part2_dto.dart';
import 'package:the_shop_app/data/dto/request/reg_user_dto.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';

part 'profile_client.g.dart';

@RestApi()
abstract class ProfileClient {
  factory ProfileClient(
    Dio dio, {
    String baseUrl,
  }) = _ProfileClient;

  @POST('/auth/email/part1')
  @Headers({'Content-Type': 'application/json'})
  Future<void> authEmailPart1(@Body() EmailAuthPart1Dto dto);

  @POST('/auth/email/part2')
  @Headers({'Content-Type': 'application/json'})
  Future<TokenDto> authEmailPart2(@Body() EmailAuthPart2Dto dto);

  @POST('/auth/register')
  @Headers({'Content-Type': 'application/json'})
  Future<void> authRegister(@Body() RegUserDto dto);

}
