import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/models/validade_reset_password/validade_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/validade_reset_password/validade_reset_password_rest_client.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';

class ResetPasswordController extends GetxController {
  TextEditingController controllerToken = TextEditingController();
  LoginController loginController = Get.find();

  Future<void> validateCodeResetPassword() async {
    ValidadeResetPasswordRestClient restClient = Get.find();
    await restClient.validateCodeResetPassoword(
      ValidadeResetPasswordModel(
        email: loginController.controllerEmail.text,
        code: controllerToken.text,
      ),
    );
  }
}
