import 'dart:convert';

import 'package:dio/dio.dart';

import '../../exception/rest_client_exception.dart';
import '../../response/rest_client_response.dart';

class LoginInterceptor extends Interceptor {
  late RestClientResponse<LoginResult> restClientResponse;
  late RestClientException restClientException;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST => ${options.method} \n'
        '=> ${options.data} \n'
        '=> ${options.path} \n'
        '=> ${options.uri} \n'
        '=> ${options.headers}');
    if (restClientResponse.statusCode == 200) handler.next(options.data);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE => ${response.statusCode} \n'
        '=> ${response.statusMessage} \n'
        '=> ${response.headers} \n'
        '=> ${response.requestOptions}');
    response.data = jsonDecode(response.data);
    return handler.resolve(response);
    // if (response.statusCode == 500 ||
    //     response.statusMessage == 'InvalidUserNameOrEmailAddress') {}
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('DIOERROR => ${err.response} \n'
        '=> ${err.requestOptions} \n'
        '=> ${err.message}');
    return handler.reject(err);
  }
}

class LoginResult {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;

  LoginResult(
      {this.accessToken,
      this.encryptedAccessToken,
      this.expireInSeconds,
      this.userId});

  Map toJson() => {
        'accessToken': this.accessToken,
        'encryptedAccessToken': this.encryptedAccessToken,
        'expireInSeconds': this.expireInSeconds,
        'userId': this.userId
      };
}
