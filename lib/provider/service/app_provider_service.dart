import 'package:flutter_riverpod/flutter_riverpod.dart';

/// некоторые функции, например login/logout задействуют сразу несколько состояний
/// например logout должен очистить список израбнных, корзину, jwt токены
/// для таких задач и существует этот класс
/// ничего не хранит, отвечает только за "оркестрацию"
class AppProviderService {}

final appServiceProvider = Provider<AppProviderService>((ref) {
  return AppProviderService();
});
