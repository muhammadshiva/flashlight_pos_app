import 'package:dio/dio.dart';
import 'package:flashlight_pos_app/core/constant/api/api_base_url.dart';
import 'package:flashlight_pos_app/core/utils/services/global_utils.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_local_datasource.dart';

class DioService {
  static final dio = Dio();

  static dynamic apiErrorHandler(DioException error) {
    if (error.response?.data != null) {
      if (error.response?.data["message"] != null) {
        throw error.response?.data['message'] ?? 'Terjadi Kesalahan';
      }
      throw error.response?.data ?? "Terjadi Kesalahan";
    }
    throw error.message ?? "Terjadi Kesalahan";
  }

  Future<DioService> init() async {
    dio.options = BaseOptions(
      baseUrl: ApiBaseUrl.production,
      connectTimeout: const Duration(seconds: 60),
    );

    dio.interceptors.add(DioInterceptorService());
    return this;
  }
}

class DioInterceptorService extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['Authorization'] == null) {
      final token = await AuthLocalDatasource().getAuthData();

      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Utils.logger.i("${response.requestOptions.uri}");
    Utils.logger.i('${response.data}');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Utils.logger.w('ERROR MESSAGE ${err.message}');
    Utils.logger.w('RESPONSE ${err.response}');
    Utils.logger.w('ERROR FROM URL ${err.requestOptions.uri}');

    if (err.type == DioExceptionType.connectionTimeout) {
      return handler.next(
        DioException(
          requestOptions: err.requestOptions,
          error: "Server sedang Bermasalah",
          message: "Silakan coba lagi nanti",
        ),
      );
    }

    if (err.type == DioExceptionType.connectionError) {
      return handler.next(
        DioException(
          requestOptions: err.requestOptions,
          error: "Tidak ada internet",
          message: "Tidak ada internet",
        ),
      );
    }

    return handler.next(err);
  }
}
