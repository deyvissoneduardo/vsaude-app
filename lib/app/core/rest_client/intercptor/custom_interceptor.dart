import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class CustomInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return err.error;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return options.data;
  }

  @override
  void onResponse(response, ResponseInterceptorHandler handler) {
    return response.data;
  }

  static error(DioError error) {
    if (error.response?.data['error']['message'] == 'InvalidPassword') {
      Get.dialog(AlertDialog(
        title: Text('Senha Incorreta'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
          TextButton(
            onPressed: () => Get.offAndToNamed(AppRoutes.RESET_PASSWORD,
                arguments: error.response?.data),
            child: Text('Resetar Senha'),
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
