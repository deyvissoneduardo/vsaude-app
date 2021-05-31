import 'package:dio/dio.dart';

class LoginInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {}

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 500 ||
        response.statusMessage == 'InvalidUserNameOrEmailAddress') {}
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(err);
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
