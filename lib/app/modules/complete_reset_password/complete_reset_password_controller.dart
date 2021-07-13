import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/constantes/constants.dart';
import 'package:vsaude_getx/app/core/models/complete_reset_password/complete_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/complete_reset_password/complete_reset_password_rest_client.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_controller.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class CompleteResetPasswordController extends GetxController {
  LoginController loginController = Get.find();
  ResetPasswordController resetPasswordController = Get.find();
  final controllerNewPassword = TextEditingController();

  @override
  void dispose() {
    controllerNewPassword.dispose();
    super.dispose();
  }

  Future<void> newPassword() async {
    CompleteResetPasswordRestClient restClient = Get.find();
    await restClient.completResetPassword(
      CompleteResetPasswordModel(
        mobileProjectId: Constants.PROJECT_ID,
        email: loginController.controllerEmail.text,
        token: resetPasswordController.controllerToken.text,
        password: controllerNewPassword.text,
      ),
    );
    Get.dialog(AlertDialog(
      title: Text('Senha atulizada'),
      actions: [
        TextButton(
          onPressed: () => Get.offAllNamed(AppRoutes.HOME),
          child: Text('OK'),
        ),
      ],
    ));
  }
}
