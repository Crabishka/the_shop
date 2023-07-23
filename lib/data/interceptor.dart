import 'package:dio/dio.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';
import 'package:the_shop_app/provider/state/token_repository.dart';

class JWTInterceptor extends QueuedInterceptor {
  JWTInterceptor({
    required Dio dio,
  }) : _dio = dio;

  final TokenRepository repository = TokenRepository();

  final Dio _dio;

  String? get _accessToken => repository.accessToken;

  String? get _refreshToken => repository.refreshToken;

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

  /// многие методы в репозитории итак обрабатывают 401 ошибку, надо быть аккуратнее
  @override
  Future onError(error, handler) async {
    if (error.response?.statusCode == 401) {
      await _refresh();
      if (repository.refreshToken != null) {
        final response = await _retry(error.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(error, handler);
  }

  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return;
    }

    try {
      final response = await _dio.post(
        '/auth/token/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        repository.saveTokens(TokenDto(
          accessToken: response.data['access_token'],
          refreshToken: response.data['refresh_token'],
        ));
      }
    } catch (e) {
      repository.deleteTokens();
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
