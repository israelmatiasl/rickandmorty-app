import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {

  static final AppPreferences _instance = AppPreferences._internal();

  factory AppPreferences() {
    return _instance;
  }

  AppPreferences._internal();

  SharedPreferences? _prefs;

  initPrefs() async{
    _prefs = await SharedPreferences.getInstance();
  }

  String? getToken() => _prefs?.getString('token');

  void setToken(String value) => _prefs?.setString('token', value);

  String? getValue(String key) => _prefs?.getString(key);

  void setValue(String key, String value) => _prefs?.setString(key, value);

  bool? getBooleanValue(String key) => _prefs?.getBool(key);

  void setBooleanValue(String key, bool value) => _prefs?.setBool(key, value);

  void removeToken() => _prefs?.remove('token');
  void removeValue(String key) => _prefs?.remove(key);
}