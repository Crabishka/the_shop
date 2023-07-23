import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_shop_app/router/app_router.dart';

class NonAuthCartPage extends StatelessWidget {
  const NonAuthCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'В вашей корзине пока ничего нет',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).navigate(
                    const CatalogTab(
                      children: [CategoryRoute()],
                    ),
                  );
                },
                child: const Text('ПЕРЕЙТИ К ПОКУПКАМ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
