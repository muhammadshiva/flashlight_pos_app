import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_endpoint.dart';
import 'package:flashlight_pos_app/core/utils/services/dio_service.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';

class ProductRemoteDatasource {
  static final Dio dio = DioService.dioCall();

  Future<Either<String, ProductModel>> getProduct() async {
    try {
      var response = await dio.get(
        Endpoint.getProducts,
      );

      return right(productModelFromJson(jsonEncode(response.data['data'])));
    } on DioException catch (e) {
      return left(DioService.apiErrorHandler(e));
    }
  }
}
