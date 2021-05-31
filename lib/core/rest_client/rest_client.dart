import 'package:vsaude_getx/core/rest_client/rest_client_response.dart';

abstract class RestClient {
  Future<RestClientResponse<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  // get();
  // update();
  // delete();
  // path();
  // fetch();
}
