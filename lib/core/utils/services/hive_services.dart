import 'package:flashlight_pos_app/core/constant/common/key.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveServices {
  static var box = Hive.box(KeyHive.box);

  Future<HiveServices> init() async {
    await Hive.initFlutter();
    await Hive.openBox(KeyHive.box);
    return this;
  }

  static Future<void> clearRefreshToken() async {
    await box.put(KeyPre.refreshToken, null);
  }

  ///PUT
  static Future<void> putListProjects(String data) async {
    await box.put(KeyPre.projects, data);
  }

  static Future<void> putUser(String data) async {
    await box.put(KeyPre.user, data);
  }

  static Future<void> putAccessToken(String data) async {
    await box.put(KeyPre.accessToken, data);
  }

  static Future<void> putRefershToken(String data) async {
    await box.put(KeyPre.refreshToken, data);
  }

  static Future<void> putClientId(int data) async {
    await box.put(KeyPre.clientId, data);
  }

  static Future<void> putLocationId(int data) async {
    await box.put(KeyPre.locationId, data);
  }

  //GET
  static Future<String?> getUser() async {
    var auth = Hive.box(KeyHive.box);
    var data = auth.get(KeyPre.user);
    return data;
  }

  static String? get accessToken {
    var auth = Hive.box(KeyHive.box);
    var data = auth.get(KeyPre.accessToken);
    return data;
  }

  static String? get refreshToken {
    var auth = Hive.box(KeyHive.box);
    var data = auth.get(KeyPre.refreshToken);
    return data;
  }

  static Future<int?> getLocationId() async {
    var auth = Hive.box(KeyHive.box);
    var data = auth.get(KeyPre.locationId);
    return data;
  }

  static Future<int?> getClientId() async {
    var auth = Hive.box(KeyHive.box);
    var data = auth.get(KeyPre.clientId);
    return data;
  }
}
