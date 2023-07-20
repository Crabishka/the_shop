import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/page/component/banner_component/main_banner.dart';
import 'package:the_shop_app/provider/di_providers.dart';

@RoutePage()
class WindowPage extends ConsumerWidget {
  const WindowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banners = ref.read(bannerRepositoryProvider).getBanners();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('The Shop')),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: banners,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Ошибка загрузки данных'));
            }
            final uploadBanners = snapshot.data ?? [];
            return ListView.separated(
              itemCount: uploadBanners.length,
              itemBuilder: (context, index) {
                return MainBanner(
                  banner: uploadBanners[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 16);
              },
            );
          },
        ),
      ),
    );
  }
}
