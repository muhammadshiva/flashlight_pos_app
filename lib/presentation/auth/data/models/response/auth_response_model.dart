import 'dart:convert';

class AuthResponseModel {
  final bool? success;
  final String? message;
  final AuthData? data;

  AuthResponseModel({
    this.success,
    this.message,
    this.data,
  });

  factory AuthResponseModel.fromRawJson(String str) =>
      AuthResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : AuthData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class AuthData {
  final User? user;
  final String? token;

  AuthData({
    this.user,
    this.token,
  });

  factory AuthData.fromRawJson(String str) =>
      AuthData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthData.fromJson(Map<String, dynamic> json) => AuthData(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "token": token,
      };
}

class User {
  final int? id;
  final String? name;
  final String? phone;
  final String? roles;
  final String? email;
  final dynamic emailVerifiedAt;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.name,
    this.phone,
    this.roles,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        roles: json["roles"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "roles": roles,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
