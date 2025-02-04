class KeyPre {
  static const String _main = "flashlight-app/";
  static const String isLogin = "${_main}isLogin";

  ///Profile data key
  static const String _profile = "$_main/user/";
  static const String user = "${_profile}data";

  ///data key
  static const String units = "${_main}units";
  static const String projects = "${_main}projects";

  ///Token data key
  static const String _token = "$_main/token/";
  static const String accessToken = "${_token}accessToken";
  static const String refreshToken = "${_token}refreshToken";

  ///Location data
  static const String locationId = "${_main}locationId";

  ///Client data
  static const String clientId = "${_main}clientId";
}

class KeyHive {
  static const String box = 'box';
}
