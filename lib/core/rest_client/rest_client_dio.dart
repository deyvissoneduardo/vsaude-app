import 'package:dio/dio.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_exception.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_response.dart';

import 'interceptor/login_interceptor.dart';

class RestClientDio implements RestClient {
  late Dio _dio;

  static final _baseOptions = BaseOptions(
    baseUrl: 'https://hml.vsaude.com.br/api/TokenAuth',
  );

  RestClientDio() {
    _dio = Dio(_baseOptions);
    _dio.interceptors.addAll([
      LoginInterceptor(),
    ]);
  }

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(path,
          data: {data},
          queryParameters: queryParameters,
          options: Options(headers: headers));

      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          message: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientException(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
          error: e.error);
    }
  }
}
