import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final Future<SharedPreferences> preferences;

  SharedPreferencesHelper({required this.preferences});

  static const _refreshToken = 'refresh_token';

  Future<String> get getToken async {
    final prefs = await preferences;
    return prefs.getString(_refreshToken) ?? '';
  }

  void setToken(String value) async {
    final prefs = await preferences;
    prefs.setString(_refreshToken, value);
  }

  void removeToken() async {
    final prefs = await preferences;
    prefs.remove(_refreshToken);
  }
}
