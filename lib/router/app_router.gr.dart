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
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    CodeValidationRoute.name: (routeData) {
      final args = routeData.argsAs<CodeValidationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CodeValidationPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegistrationPage(
          args.email,
          key: args.key,
        ),
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
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductPage(
          key: args.key,
          id: args.id,
          product: args.product,
        ),
      );
    },
  };
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
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CodeValidationPage]
class CodeValidationRoute extends PageRouteInfo<CodeValidationRouteArgs> {
  CodeValidationRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          CodeValidationRoute.name,
          args: CodeValidationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'CodeValidationRoute';

  static const PageInfo<CodeValidationRouteArgs> page =
      PageInfo<CodeValidationRouteArgs>(name);
}

class CodeValidationRouteArgs {
  const CodeValidationRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'CodeValidationRouteArgs{key: $key, email: $email}';
  }
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
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    required String email,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<RegistrationRouteArgs> page =
      PageInfo<RegistrationRouteArgs>(name);
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({
    required this.email,
    this.key,
  });

  final String email;

  final Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{email: $email, key: $key}';
  }
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
/// [OrderPage]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int id,
    Product? product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            id: id,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.id,
    this.product,
  });

  final Key? key;

  final int id;

  final Product? product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, id: $id, product: $product}';
  }
}
