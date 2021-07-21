import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/login/login_repository_rest_client.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/create_mobile_user/create_mobile_user_controller.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_controller.dart';

import 'login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());

    Get.put<LoginRepositoryRestClient>(
        LoginRepositoryRestClient(restClient: Get.find()));
    Get.put<LocalDataUserRestClient>(LocalDataUserRestClient());

    Get.put<LoginController>(LoginController());
    Get.put<CreateMobileUserController>(CreateMobileUserController());
    Get.put<ResetPasswordController>(ResetPasswordController());
  }
}
