import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:the_shop_app/data/dto/response/token_dto.dart';

const String accessTokenKey = 'access';
const String refreshTokenKey = 'refresh';

class TokenRepository extends StateNotifier<TokenDto?> {




  final storage = const FlutterSecureStorage();

  String? accessToken;
  String? refreshToken;

  TokenRepository(super.state);

  Future<void> initTokens() async {
    accessToken = await storage.read(key: accessTokenKey);
    refreshToken = await storage.read(key: refreshTokenKey);
  }

  Future<String?> getAccessToken() async {
    return storage.read(key: accessTokenKey);
  }

  Future<String?> getRefreshToken() async {
    return storage.read(key: accessTokenKey);
  }

  Future<void> saveTokens(TokenDto tokens) async {
    state = tokens;
    accessToken = tokens.accessToken;
    refreshToken = tokens.refreshToken;
    storage.write(key: accessTokenKey, value: tokens.accessToken);
    storage.write(key: refreshTokenKey, value: tokens.refreshToken);
  }

  void deleteTokens() {
    accessToken = null;
    refreshToken = null;
    state = null;
    storage.delete(key: accessTokenKey);
    storage.delete(key: refreshTokenKey);

  }
}

final tokenRepositoryProvider = StateNotifierProvider<TokenRepository, TokenDto?>((ref) {
  return TokenRepository(null);
});
