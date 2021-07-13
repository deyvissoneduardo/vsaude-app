import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/complete_reset_password/complete_reset_password_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_controller.dart';
import './complete_reset_password_controller.dart';

class CompleteResetPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());
    Get.put<CompleteResetPasswordRestClient>(
        CompleteResetPasswordRestClient(restClientService: Get.find()));

    Get.put<CompleteResetPasswordController>(CompleteResetPasswordController());
    Get.put<LoginController>(LoginController());
    Get.put<ResetPasswordController>(ResetPasswordController());
  }
}
