import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/models/reset_password/reset_password_model.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';
import 'login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClientService _restClient;

  LoginRepositoryRestClient({
    required RestClientService restClient,
  }) : _restClient = restClient;

  @override
  Future<LoginModel> singInApp(LoginModel loginModel) async {
    try {
      await _restClient.post<LoginModel>(
        '/TokenAuth/AuthenticateMobileUser',
        data: loginModel.toJson(),
      );
      return LoginModel.fromMap(loginModel.toMap());
    } on RestClientException catch (e) {
      print(e.error);
      return e.error;
    }
  }

  @override
  Future<void> resetPassword(ResetPasswordModel resetPasswordModel) async {
    await _restClient.post<ResetPasswordModel>(
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
          TextButton(
            onPressed: () => Get.offAndToNamed(AppRoutes.RESET_PASSWORD),
            child: Text('Reseta Senha'),
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
