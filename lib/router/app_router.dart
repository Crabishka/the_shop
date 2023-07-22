import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/model/category.dart';
import 'package:the_shop_app/page/cart_page.dart';
import 'package:the_shop_app/page/catalog/catalog_page.dart';
import 'package:the_shop_app/page/catalog/category_page.dart';
import 'package:the_shop_app/page/favourities_page.dart';
import 'package:the_shop_app/page/home_page.dart';
import 'package:the_shop_app/page/profile/profile_page.dart';
import 'package:the_shop_app/page/catalog/subcategories_page.dart';
import 'package:the_shop_app/page/window_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: WindowTab.page,
              children: [
                AutoRoute(page: WindowRoute.page),
              ],
            ),
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(page: CategoryRoute.page),
                AutoRoute(page: SubcategoriesRoute.page),
                AutoRoute(page: CatalogRoute.page),
              ],
            ),
            AutoRoute(
              page: CartTab.page,
              children: [
                AutoRoute(page: CartRoute.page),
              ],
            ),
            AutoRoute(
              page: FavouriteTab.page,
              children: [
                AutoRoute(page: FavouritesRoute.page),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'WindowTab')
class WindowTabPage extends AutoRouter {
  const WindowTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'FavouriteTab')
class FavouriteTabPage extends AutoRouter {
  const FavouriteTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
