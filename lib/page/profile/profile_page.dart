import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_shop_app/data/repository/token_repository.dart';
import 'package:the_shop_app/page/component/farm_add_bar.dart';
import 'package:the_shop_app/page/component/grey_divider.dart';
import 'package:the_shop_app/provider/service/app_provider_service.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var token = ref.watch(tokenRepositoryProvider).accessToken;
    return Scaffold(
      appBar: const FarmAppBar(title: 'Профиль'),
      body:
          token == null ? const NonAuthProfilePage() : const AuthProfilePage(),
    );
  }
}

class NonAuthProfilePage extends ConsumerWidget {
  const NonAuthProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {
                context.router.navigate(const AuthRoute());
              },
              child: const Text('ВОЙТИ / ЗАРЕГИСТРИРОВАТЬСЯ'),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const ListTile(
            title: Text(
              'Адреса магазинов',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
          ),
          const GreyDivider(
            indent: 0,
            endIndent: 0,
          )
        ],
      ),
    ));
  }
}

class AuthProfilePage extends ConsumerWidget {
  const AuthProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Мои данные',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
          ),
          const GreyDivider(
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {
                ref.read(appProvider).logout(ref);
              },
              child: const Text('ВЫЙТИ'),
            ),
          ),
        ],
      ),
    ));
  }
}
