import 'package:dio/dio.dart';

import 'response/rest_client_response.dart';

abstract class RestClient {
  Future<RestClientResponse<T>> post<T>(
    String path, {
    Options options,
    dynamic data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  });

  Future<RestClientResponse> get<T>(
    String path, {
    Options options,
    dynamic data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  });

  // update();
  // delete();
  // path();
  // fetch();
}
