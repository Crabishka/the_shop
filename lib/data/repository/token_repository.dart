import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';

const String accessTokenKey = 'access';
const String refreshTokenKey = 'refresh';

class TokenRepository extends ChangeNotifier {
  static final TokenRepository _singleton = TokenRepository._internal();

  factory TokenRepository() {
    return _singleton;
  }

  TokenRepository._internal();

  final storage = const FlutterSecureStorage();

  String? accessToken;
  String? refreshToken;

  Future<void> initTokens() async {
    accessToken = await storage.read(key: accessTokenKey);
    refreshToken = await storage.read(key: refreshTokenKey);
    notifyListeners();
  }

  Future<String?> getAccessToken() async {
    return storage.read(key: accessTokenKey);
  }

  Future<String?> getRefreshToken() async {
    return storage.read(key: accessTokenKey);
  }

  Future<void> saveTokens(TokenDto tokens) async {
    print('Сохранено $tokens');
    accessToken = tokens.accessToken;
    refreshToken = tokens.refreshToken;
    storage.write(key: accessTokenKey, value: tokens.accessToken);
    storage.write(key: refreshTokenKey, value: tokens.refreshToken);
    notifyListeners();
  }

  void deleteTokens() {
    accessToken = null;
    refreshToken = null;
    storage.delete(key: accessTokenKey);
    storage.delete(key: refreshTokenKey);
    notifyListeners();
  }
}

final tokenRepositoryProvider = ChangeNotifierProvider<TokenRepository>((ref) {
  return TokenRepository();
});
