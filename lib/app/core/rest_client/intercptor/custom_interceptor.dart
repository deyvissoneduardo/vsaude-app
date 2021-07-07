import 'package:dio/dio.dart';

class CustomInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return err.error;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return options.data;
  }

  @override
  void onResponse(response, ResponseInterceptorHandler handler) {
    return response.data;
  }
}
