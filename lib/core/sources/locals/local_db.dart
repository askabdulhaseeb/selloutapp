import 'package:shared_preferences/shared_preferences.dart';

class LocalDB {
  static late SharedPreferences _preferences;
  static Future<SharedPreferences> init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future<void> signout() => _preferences.clear();

  static const String _accessTokenKey = 'AccessTokenKey';
  static const String _refreshTokenKey = 'RefreshTokenKey';
  static const String _userIdKey = 'UserIdKey';

  static Future<void> setAccessToken(String value) async {
    await _preferences.setString(
        _accessTokenKey, value.contains('Bearer ') ? value : 'Bearer $value');
  }

  static Future<void> setRefreshToken(String value) async =>
      await _preferences.setString(_refreshTokenKey, value);

  static Future<void> setUserID(String value) async =>
      await _preferences.setString(_userIdKey, value);

  static String? accessToken() => _preferences.getString(_accessTokenKey);
  static String? refreshToken() => _preferences.getString(_refreshTokenKey);
  static String? userID() => _preferences.getString(_userIdKey);
}
