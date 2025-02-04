import 'dart:convert';

import 'package:flashlight_pos_app/presentation/auth/data/models/response/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthModel authModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_data', jsonEncode(authModel));
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<AuthModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return AuthModel.fromJson(jsonDecode(authData!));
  }

  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    await Future.delayed(const Duration(seconds: 3));
    return authData != null;
  }
}
