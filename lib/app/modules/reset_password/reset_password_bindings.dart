import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/validade_reset_password/validade_reset_password_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';
import './reset_password_controller.dart';

class ResetPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());
    Get.put(ValidadeResetPasswordRestClient(restClient: Get.find()));

    Get.put<ResetPasswordController>(ResetPasswordController());
    Get.put<LoginController>(LoginController());
  }
}
