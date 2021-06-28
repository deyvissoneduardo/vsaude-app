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
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 500) print('::::::status code 500:::::');
    return response.data;
  }
}
