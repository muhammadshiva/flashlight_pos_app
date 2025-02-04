import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_auth_constant.dart';
import 'package:flashlight_pos_app/core/utils/services/dio_exception.dart';
import 'package:flashlight_pos_app/core/utils/services/dio_service.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
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
        ApiAuthConstant.login(),
        data: formData,
      );

      if (response.statusCode == 200) {
        return right(authModelFromJson(jsonEncode(response.data['data'])));
      } else {
        return left(response.data['data']);
      }
    } on DioException catch (e) {
      var errorResponse = e.response?.data['data'];
      String? errorMessage = parseErrorMessage(errorResponse);

      return left(errorMessage ?? 'Unknown error occurred');
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, Response>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();

    try {
      var response = await dio.post(
        ApiAuthConstant.logout(),
        options: Options(
          headers: {
            'Authorization': 'Bearer ${authData.token}',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(response);
      } else {
        return left(response.statusMessage ?? 'Unknown error occurred');
      }
    } on DioException catch (e) {
      var errorResponse = e.response?.data;
      String? errorMessage = parseErrorMessage(errorResponse);

      return left(errorMessage ?? 'Unknown error occurred');
    } catch (e) {
      return left(e.toString());
    }
  }
}
