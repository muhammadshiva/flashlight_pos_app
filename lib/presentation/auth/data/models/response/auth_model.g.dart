// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'],
      roles: json['roles'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'roles': instance.roles,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
