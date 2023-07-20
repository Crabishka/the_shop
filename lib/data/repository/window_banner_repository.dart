import 'package:the_shop_app/data/client/window_banner_client.dart';
import 'package:the_shop_app/model/banner.dart';

class WindowBannerRepository {
  final WindowBannerClient _api;

  WindowBannerRepository(this._api);

  Future<List<WindowBanner>> getBanners() {
    return _api.banners();
  }
}
