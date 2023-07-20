// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    FavouritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    WindowRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WindowPage(),
      );
    },
    WindowTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WindowTabPage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    FavouriteTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouriteTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryPage(),
      );
    },
    SubcategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<SubcategoriesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubcategoriesPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogPage(
          categoryId: args.categoryId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritesPage]
class FavouritesRoute extends PageRouteInfo<void> {
  const FavouritesRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WindowPage]
class WindowRoute extends PageRouteInfo<void> {
  const WindowRoute({List<PageRouteInfo>? children})
      : super(
          WindowRoute.name,
          initialChildren: children,
        );

  static const String name = 'WindowRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WindowTabPage]
class WindowTab extends PageRouteInfo<void> {
  const WindowTab({List<PageRouteInfo>? children})
      : super(
          WindowTab.name,
          initialChildren: children,
        );

  static const String name = 'WindowTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouriteTabPage]
class FavouriteTab extends PageRouteInfo<void> {
  const FavouriteTab({List<PageRouteInfo>? children})
      : super(
          FavouriteTab.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubcategoriesPage]
class SubcategoriesRoute extends PageRouteInfo<SubcategoriesRouteArgs> {
  SubcategoriesRoute({
    Key? key,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          SubcategoriesRoute.name,
          args: SubcategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'SubcategoriesRoute';

  static const PageInfo<SubcategoriesRouteArgs> page =
      PageInfo<SubcategoriesRouteArgs>(name);
}

class SubcategoriesRouteArgs {
  const SubcategoriesRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final Category category;

  @override
  String toString() {
    return 'SubcategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    required int categoryId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            categoryId: categoryId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    required this.categoryId,
    this.key,
  });

  final int categoryId;

  final Key? key;

  @override
  String toString() {
    return 'CatalogRouteArgs{categoryId: $categoryId, key: $key}';
  }
}
