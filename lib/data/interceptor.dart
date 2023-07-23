import 'package:dio/dio.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/data/repository/token_repository.dart';

class JWTInterceptor extends QueuedInterceptor {
  JWTInterceptor({
    required Dio dio,
  }) : _dio = dio;

  final TokenRepository repository = TokenRepository();

  /// Http client.
  final Dio _dio;

  /// JWT token.
  String? get _accessToken => repository.accessToken;

  /// JWT refresh token.
  String? get _refreshToken => repository.refreshToken;

  /// Add JWT authorization token to any request, if available.
  @override
  void onRequest(options, handler) {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path == '/auth/email/part2') {
      repository.saveTokens(TokenDto(
        accessToken: response.data['access_token'],
        refreshToken: response.data['refresh_token'],
      ));
    }
    super.onResponse(response, handler);
  }
}
