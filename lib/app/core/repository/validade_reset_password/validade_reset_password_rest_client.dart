import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/models/validade_reset_password/validade_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/validade_reset_password/validade_reset_password_repository.dart';
import 'package:vsaude_getx/app/core/rest_client/response/rest_client_response.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class ValidadeResetPasswordRestClient
    implements ValidadeResetPasswordRepository {
  final RestClientService _restClient;

  ValidadeResetPasswordRestClient({
    required RestClientService restClient,
  }) : _restClient = restClient;

  @override
  Future<void> validateCodeResetPassoword(
      ValidadeResetPasswordModel validadeResetPasswordModel) async {
    try {
      final response = await _restClient.post(
        '/services/app/User/ValidateResetPasswordCode',
        data: validadeResetPasswordModel.toJson(),
      );
      print('result => ${response.data['result']}');
      erroToken(response);
    } on DioError catch (e) {
      print(e.response!.data);
      throw false;
    }
  }

  Future<bool> erroToken(RestClientResponse response) async {
    if (response.data['result'] == false) {
      print('=> ${response.data['result']}');
      await Get.dialog(AlertDialog(
        title: Text('Token Invalido'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ));
    } else {
      Get.toNamed(AppRoutes.COMPLETE_PASSWORD);
    }
    return false;
  }
}
