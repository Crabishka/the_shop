import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_shop_app/data/client/cart_client.dart';
import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/product_client.dart';
import 'package:the_shop_app/data/client/profile_client.dart';
import 'package:the_shop_app/data/client/window_banner_client.dart';
import 'package:the_shop_app/data/repository/cart_repository.dart';
import 'package:the_shop_app/data/repository/category_repository.dart';
import 'package:the_shop_app/data/interceptor.dart';
import 'package:the_shop_app/data/repository/product_repository.dart';
import 'package:the_shop_app/data/repository/profile_repository.dart';
import 'package:the_shop_app/provider/state/token_repository.dart';
import 'package:the_shop_app/data/repository/window_banner_repository.dart';

const String baseUrl = 'https://farm.fbtw.ru';

final tokenRepositoryProvider = Provider<TokenRepository>((ref) {
  return TokenRepository();
});

Dio dio = Dio();

final dioProvider = Provider<Dio>((ref) {
  return dio
    ..interceptors.add(
      PrettyDioLogger(),
    )
    ..interceptors.add(JWTInterceptor(dio: dio))
    ..options.baseUrl = baseUrl;
});

final bannerClientProvider = Provider<WindowBannerClient>((ref) {
  return WindowBannerClient(ref.read(dioProvider));
});

final bannerRepositoryProvider = Provider<WindowBannerRepository>((ref) {
  return WindowBannerRepository(ref.read(bannerClientProvider));
});

final categoryClientProvider = Provider<CategoryClient>((ref) {
  return CategoryClient(ref.read(dioProvider));
});

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository(ref.read(categoryClientProvider));
});

final productClientProvider = Provider<ProductClient>((ref) {
  return ProductClient(ref.read(dioProvider));
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.read(productClientProvider));
});

final profileClientProvider = Provider<ProfileClient>((ref) {
  return ProfileClient(ref.read(dioProvider));
});

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref.read(profileClientProvider));
});

final cartClientProvider = Provider<CartClient>((ref) {
  return CartClient(ref.read(dioProvider));
});

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(ref.read(cartClientProvider));
});
