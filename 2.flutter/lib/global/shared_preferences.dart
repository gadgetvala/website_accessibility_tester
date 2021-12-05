import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static SharedPreferences? _prefInstance;

  Future<void> init() async {
    _prefInstance = await SharedPreferences.getInstance();
  }

  Future clearLocalPref() async {
    await _prefInstance?.clear();
  }

  // setters
  Future setFCMtoken(String token) async =>
      _prefInstance?.setString(_fcmKey, token);
  Future setToken(String token) async =>
      _prefInstance?.setString(_tokenKey, token);

  // getters
  String? get fcmToken => _prefInstance?.getString(_fcmKey);
  String? get token => _prefInstance?.getString(_tokenKey);
}

const String _fcmKey = "fcmTokenKey";
const String _tokenKey = "tokenKey";
