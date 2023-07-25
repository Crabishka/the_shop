import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_shop_app/provider/manager/app_provider_service.dart';
import 'package:the_shop_app/router/app_router.dart';

///
///  Как должна работать архитектура этого чуда.
///  UI рисуется на основании StateNotifier,
///  но UI не меняет состояние StateNotifier напрямую.
///  Вместо этого все изменения состояния проходят через AppStateManager.
///  В AppStateManager прокидывается WidgerRef, с помощью которого он обращается к состояниям.
///  AppStateManager уже ходит в репозитории, которые ходят к клиенту.
///  После получения всех нужных данных и их валидации, AppStateManager
///  обновляет все необходимые состояния.
///  Сами Notifier'ы не содержат логики/валидации/маппинга, они могут просто менять свое состояние.
///  Смысл AppStateManager'а в том, что лишаем StateNotifier'ы всякой ответственности кроме хранения данных,
///  а также позволяем измененять нескольких состояний из одного места.
///  Например при выходе, мы должны сбросить состояние корзины/заказа/избранных.
///  Но это в теории, на практике все эти проблемы решаются лишней проверкой на наличие токена.
///
///    _______________________________
///   |                              |
///   v                              |
///  UI --> AppStateManager --> StateNotifier
///              ^    ^
///              |    |
///              |    |
///              v    v
///              Repository <---> Client
///

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(appStateManagerProvider).onStart(ref);

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.white,
        ),
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
