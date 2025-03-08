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

// class DioService {
//   DioService._();

//   static final DioService dioService = DioService._();

//   static final Logger _logger = Logger(
//     printer: PrettyPrinter(
//       methodCount: 0,
//     ),
//   );

//   factory DioService() {
//     return dioService;
//   }

//   static const int timeOutInMiliSeconds = 1000;

//   static Dio dioCall({
//     int timeout = timeOutInMiliSeconds,
//     String? authorization,
//   }) {
//     var headers = {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $authorization'
//     };

//     var dio = Dio(
//       BaseOptions(
//         headers: headers,
//         baseUrl: ApiBaseUrl.production,
//         connectTimeout: Duration(milliseconds: timeout),
//         contentType: "application/json",
//         responseType: ResponseType.json,
//       ),
//     );

//     dio.interceptors.add(_authInterceptor());
//     return dio;
//   }

//   static String apiErrorHandler(DioException e) {
//     DioService._logger.e('DioException: ${e.message}');

//     switch (e.type) {
//       case DioExceptionType.connectionTimeout:
//         return "Server error. Please try again later.";
//       case DioExceptionType.connectionError:
//         return "No internet connection.";
//       case DioExceptionType.receiveTimeout:
//         return "Response timeout.";
//       case DioExceptionType.sendTimeout:
//         return "Request timeout.";
//       case DioExceptionType.badResponse:
//         var errorMessage = e.response?.data['message'] ?? "Server error.";
//         return errorMessage;
//       case DioExceptionType.cancel:
//         return "Request cancelled.";
//       default:
//         return "An error occurred. Please try again.";
//     }
//   }

//   static Interceptor _authInterceptor() {
//     return QueuedInterceptorsWrapper(
//       onRequest: (reqOptions, handler) async {
//         DioService._logger.w('REQUEST URL ${reqOptions.uri}');
//         DioService._logger.w('HEADERS ${reqOptions.headers}');
//         DioService._logger.w('DATA ${reqOptions.data}');

//         if (reqOptions.headers['Authorization'] == null) {
//           final token = await AuthLocalDatasource().getAuthData();

//           reqOptions.headers['Authorization'] = 'Bearer $token';
//           DioService._logger.i('Authorization added to the request header');
//         }

//         return handler.next(reqOptions);
//       },
//       onError: (error, handler) async {
//         DioService._logger.w('ERROR MESSAGE ${error.message}');
//         DioService._logger.w('RESPONSE ${error.response}');
//         DioService._logger.w('ERROR FROM URL ${error.requestOptions.uri}');

//         if (error.type == DioExceptionType.connectionTimeout) {
//           return handler.next(
//             DioException(
//               requestOptions: error.requestOptions,
//               error: "Server sedang Bermasalah",
//               message: "Silakan coba lagi nanti",
//             ),
//           );
//         }

//         if (error.type == DioExceptionType.connectionError) {
//           return handler.next(
//             DioException(
//               requestOptions: error.requestOptions,
//               error: "Tidak ada internet",
//               message: "Tidak ada internet",
//             ),
//           );
//         }

//         return handler.next(error);
//       },
//       onResponse: (response, handler) async {
//         log('${response.requestOptions.uri}', name: 'RESPONSE FROM URL');
//         log('${response.data}', name: 'RESPONSE');
//         DioService._logger.i("${response.requestOptions.uri}");

//         return handler.resolve(response);
//       },
//     );
//   }
// }
