import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final Future<SharedPreferences> preferences;

  SharedPreferencesHelper({required this.preferences});

  static const _refreshToken = 'refresh-token';
  static const _sortByDate = 'sort-by-date';

  Future<String> get getToken async {
    final prefs = await preferences;
    return prefs.getString(_refreshToken) ?? '';
  }

  void setToken(String value) async {
    final prefs = await preferences;
    await prefs.setString(_refreshToken, value);
  }

  void removeToken() async {
    final prefs = await preferences;
    await prefs.remove(_refreshToken);
  }

  Future<int> get getSortBy async {
    final prefs = await preferences;
    return prefs.getInt(_sortByDate) ?? 1;
  }

  void setSortBy(int value) async {
    final prefs = await preferences;
    await prefs.setInt(_sortByDate, value);
  }

  void removeSortBy() async {
    final prefs = await preferences;
    await prefs.remove(_sortByDate);
  }
}
