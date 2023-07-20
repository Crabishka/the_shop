import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:the_shop_app/model/banner.dart';

part 'window_banner_client.g.dart';

@RestApi()
abstract class WindowBannerClient {
  factory WindowBannerClient(
    Dio dio, {
    String baseUrl,
  }) = _WindowBannerClient;

  @GET('/banners')
  Future<List<WindowBanner>> banners();
}
