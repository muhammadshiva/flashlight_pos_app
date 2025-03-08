import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_endpoint.dart';
import 'package:flashlight_pos_app/core/utils/services/dio_service.dart';
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductModel>> getProduct() async {
    try {
      var response = await DioService.dio.get(
        Endpoint.getProducts,
      );

      return right(productModelFromJson(jsonEncode(response.data['data'])));
    } on DioException catch (e) {
      return left(DioService.apiErrorHandler(e));
    }
  }
}
