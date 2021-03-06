import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/models/reset_password/reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/login/login_result.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClientService _restClient;

  LoginRepositoryRestClient({
    required RestClientService restClient,
  }) : _restClient = restClient;

  @override
  Future<LoginResult> singInApp(LoginModel loginModel) async {
    try {
      final result = await _restClient.post(
        '/TokenAuth/AuthenticateMobileUser',
        data: loginModel.toJson(),
      );
      return LoginResult.fromMap(result.data['result']);
    } on RestClientException catch (e) {
      print(e.error);
      return e.error;
    }
  }

  @override
  Future<void> resetPassword(ResetPasswordModel resetPasswordModel) async {
    await _restClient.post(
      '/services/app/User/StartResetPassword',
      data: resetPasswordModel.toJson(),
    );
  }

  error(DioError error) {
    if (error.response?.data['error']['message'] == 'InvalidPassword') {
      Get.dialog(AlertDialog(
        title: Text('Senha Incorreta'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ));
    }

    if (error.response?.data['error']['message'] ==
        'InvalidUserNameOrEmailAddress') {
      Get.dialog(AlertDialog(
        title: Text('Email Invalido'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ));
    }
  }
}
