import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import './reset_password_controller.dart';

class ResetPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());
    Get.put<ResetPasswordController>(ResetPasswordController());
  }
}
