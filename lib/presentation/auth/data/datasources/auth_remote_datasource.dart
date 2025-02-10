import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_endpoint.dart';
import 'package:flashlight_pos_app/core/utils/services/dio_service.dart';
import 'package:flashlight_pos_app/presentation/auth/data/models/response/auth_model.dart';

class AuthRemoteDatasouce {
  static final Dio dio = DioService.dioCall();

  Future<Either<String, AuthModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      var formData = {
        'email': email,
        'password': password,
      };

      var response = await dio.post(
        Endpoint.login,
        data: formData,
      );

      return right(authModelFromJson(jsonEncode(response.data['data'])));
    } on DioException catch (e) {
      return left(DioService.apiErrorHandler(e));
    }
  }

  Future<Either<String, Response>> logout() async {
    try {
      var response = await dio.post(
        Endpoint.logout,
      );

      return right(response);
    } on DioException catch (e) {
      return left(DioService.apiErrorHandler(e));
    }
  }
}
