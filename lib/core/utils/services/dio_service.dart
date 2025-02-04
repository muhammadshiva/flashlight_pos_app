import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_base_url.dart';
import 'package:logger/logger.dart';

class DioService {
  DioService._();

  static final DioService dioService = DioService._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  factory DioService() {
    return dioService;
  }

  static const int timeOutInMiliSeconds = 1000;

  static Dio dioCall({
    int timeout = timeOutInMiliSeconds,
    String? authorization,
  }) {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $authorization'
    };

    var dio = Dio(
      BaseOptions(
        headers: headers,
        baseUrl: ApiBaseUrl.production,
        connectTimeout: Duration(milliseconds: timeout),
        contentType: "application/json",
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.add(_authInterceptor());
    return dio;
  }

  static Interceptor _authInterceptor() {
    return QueuedInterceptorsWrapper(
      onRequest: (reqOptions, handler) {
        DioService._logger.w('REQUEST URL ${reqOptions.uri}');
        DioService._logger.w('HEADERS ${reqOptions.headers}');
        DioService._logger.w('DATA ${reqOptions.data}');

        return handler.next(reqOptions);
      },
      onError: (error, handler) async {
        DioService._logger.w('ERROR MESSAGE ${error.message}');
        DioService._logger.w('RESPONSE ${error.response}');
        DioService._logger.w('ERROR FROM URL ${error.requestOptions.uri}');

        if (error.type == DioExceptionType.connectionTimeout) {
          return handler.next(
            DioException(
              requestOptions: error.requestOptions,
              error: "Server sedang Bermasalah",
              message: "Silakan coba lagi nanti",
            ),
          );
        }

        if (error.type == DioExceptionType.connectionError) {
          return handler.next(
            DioException(
              requestOptions: error.requestOptions,
              error: "Tidak ada internet",
              message: "Tidak ada internet",
            ),
          );
        }

        return handler.next(error);
      },
      onResponse: (response, handler) async {
        log('${response.requestOptions.uri}', name: 'RESPONSE FROM URL');
        log('${response.data}', name: 'RESPONSE');
        DioService._logger.i("${response.requestOptions.uri}");

        return handler.resolve(response);
      },
    );
  }
}
