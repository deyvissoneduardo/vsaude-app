import 'package:get/get.dart';
import 'package:vsaude_getx/app/modules/login/login_controller.dart';

class StartResetPasswordController extends GetxController {
  final LoginController loginController = Get.find<LoginController>();

  message() {
    print(loginController);
  }
}
