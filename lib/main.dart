import 'package:flutter/material.dart';
import 'package:the_shop_app/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
    );
  }
}
