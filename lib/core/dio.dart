import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotiplay/core/environment.dart';

class DioClient {
  factory DioClient() => _singleton;
  static final DioClient _singleton = DioClient._internal();

  DioClient._internal() {
    final env = Environment().config;

    // Configs
    final options = BaseOptions(
      baseUrl: env.api,
      connectTimeout: 5000,
    );

    dio = Dio(options);

    dio.interceptors.addAll([
      AuthorizationInterceptor(),
    ]);
  }

  late final Dio dio;
  static String? token;
}

// Token interceptor
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // add token to DioClient
    if (DioClient.token?.isEmpty ?? true) {
      final local = await SharedPreferences.getInstance();
      final token = local.getString('token');

      // Return error if user has no token
      if (token?.isEmpty == true) {
        final error = DioError(
          requestOptions: RequestOptions(path: options.path),
          error: "Acceso denegado",
          type: DioErrorType.cancel,
        );

        return handler.reject(error);
      }

      DioClient.token = token;
    }

    // Add headers
    options.headers['content-type'] = 'application/json';
    options.headers['Authorization'] = 'Bearer ${DioClient.token}';

    // Release request
    return super.onRequest(options, handler);
  }
}
