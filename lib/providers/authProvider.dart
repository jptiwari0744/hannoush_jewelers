import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  String? _authToken;

  String? get authToken => _authToken;

  setAuthToken(String? token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // _authToken = token;
    print('auth$_authToken');
    await prefs.setString('auth_token', token!);
    _authToken = await prefs.getString('auth_token');
    print('getauth$_authToken');

    notifyListeners();
  }
}
