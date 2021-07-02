import 'dart:convert';

import 'package:vsaude_getx/app/core/models/start_reset_password/start_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/start_reset_password/start_reset_password_repository.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/custom_dio_error.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client.dart';

class StartResetPasswordRestClient extends StartResetPasswordRepository {
  final RestClient _restClient;

  StartResetPasswordRestClient({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<StartResetPasswordModel> resetPassword(
      StartResetPasswordModel startResetPasswordModel) async {
    try {
      await _restClient.post('services/app/User/StartResetPassword',
          data: startResetPasswordModel.toJson());
      return StartResetPasswordModel.fromMap(startResetPasswordModel.toMap());
    } on CustomDioError catch (e) {
      print(e);
      return e.error;
    }
  }
}
