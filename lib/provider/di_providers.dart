import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_shop_app/data/client/category_client.dart';
import 'package:the_shop_app/data/client/product_client.dart';
import 'package:the_shop_app/data/client/window_banner_client.dart';
import 'package:the_shop_app/data/repository/category_repository.dart';
import 'package:the_shop_app/data/repository/product_repository.dart';
import 'package:the_shop_app/data/repository/window_banner_repository.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio()
    ..interceptors.add(
      PrettyDioLogger(),
    )
    ..options.baseUrl = 'https://farm.fbtw.ru';
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
