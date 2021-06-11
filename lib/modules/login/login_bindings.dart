import 'package:get/get.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_login/rest_client_login.dart';
import 'package:vsaude_getx/modules/login/login_controller.dart';
import 'package:vsaude_getx/repository/login/login_repository_rest_client.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestClient>(() => RestClientLogin());
    Get.lazyPut<LoginRepositoryRestClient>(
        () => LoginRepositoryRestClient(restClient: Get.find()));
    Get.put(LoginController());
  }
}
