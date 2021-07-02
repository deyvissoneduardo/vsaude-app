import 'package:get/get.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';
import './start_reset_password_controller.dart';

class StartResetPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(StartResetPasswordController());
    Get.put<LoginController>(LoginController());
  }
}
