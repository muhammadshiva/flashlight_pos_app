import 'dart:convert';

class AuthResponseModel {
  final User? user;
  final String? message;
  final int? status;
  final String? token;

  AuthResponseModel({
    this.user,
    this.message,
    this.status,
    this.token,
  });

  factory AuthResponseModel.fromRawJson(String str) =>
      AuthResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        user: User.fromJson(json["user"]),
        message: json["message"],
        status: json["status"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "message": message,
        "status": status,
        "token": token,
      };
}

class User {
  final int? id;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? emailVerifiedAt;
  final String? role;
  final int? isMember;

  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.emailVerifiedAt,
    this.role,
    this.isMember,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        emailVerifiedAt: json["email_verified_at"],
        role: json["role"],
        isMember: json["is_member"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "email_verified_at": emailVerifiedAt,
        "role": role,
        "is_member": isMember,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
