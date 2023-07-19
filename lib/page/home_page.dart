import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        WindowRoute(),
        CatalogRoute(),
        CartRoute(),
        FavouritesRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                ),
                label: 'Window',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: 'Catalog',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
