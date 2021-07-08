import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';

import 'rest_client.dart';
import 'response/rest_client_response.dart';

class RestClientService implements RestClient {
  late Dio _dio;
  static final _baseOptions = BaseOptions(
    baseUrl: 'https://api.vsaude.com.br/api',
  );

  RestClientService() {
    _dio = Dio(_baseOptions);
  }

  Dio get dio => _dio;

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Options? options,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      print('::::TOKEN => ${response.data['result']['token']}::::::::');
      return RestClientResponse(
        data: response.data,
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
    } on RestClientException catch (e) {
      print(e.error);
      return e.error;
    }
  }
}
