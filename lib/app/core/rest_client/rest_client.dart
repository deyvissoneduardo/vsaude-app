import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_response.dart';

abstract class RestClient {
  Future<RestClientResponse<T>> post<T>(
    String path, {
    Options options,
    dynamic data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  });

  // get();
  // update();
  // delete();
  // path();
  // fetch();
}
