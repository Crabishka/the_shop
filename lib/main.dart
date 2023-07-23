import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_shop_app/data/repository/token_repository.dart';
import 'package:the_shop_app/router/app_router.dart';

Future<void> init() async {
  await TokenRepository().initTokens();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        colorScheme: const ColorScheme.light(primary: Colors.black),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 12, letterSpacing: 1.44),
            disabledBackgroundColor: const Color(0xFF7D7D7D),
            disabledForegroundColor:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            backgroundColor: Colors.black,
            foregroundColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
        ),
      ),
    );
  }
}
