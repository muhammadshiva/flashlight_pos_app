// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "token") String? token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") dynamic phone,
    @JsonKey(name: "roles") String? roles,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
    @JsonKey(name: "deleted_at") dynamic deletedAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
