import 'package:dio/dio.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_exception.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_response.dart';

class RestClientRegistgerUser implements RestClient {
  late Dio _dio;

  static final _baseOptions = BaseOptions(
    baseUrl: 'https://hml.vsaude.com.br/api/services/app/User',
  );

  RestClientRegistgerUser() {
    _dio = Dio(_baseOptions);
  }
  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {Options? options,
      data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return RestClientResponse(
        data: response.data,
        message: response.statusMessage,
        statusCode: response.statusCode,
      );
    } on DioError catch (e) {
      throw RestClientException(
        error: e.error,
        message: e.response!.statusMessage,
        statusCode: e.response!.statusCode,
      );
    }
  }
}
