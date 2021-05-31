import 'package:get/get.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_dio.dart';
import 'package:vsaude_getx/modules/login/login_controller.dart';
import 'package:vsaude_getx/repository/login/login_repository.dart';
import 'package:vsaude_getx/repository/login/login_repository_rest_client.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestClient>(() => RestClientDio());
    Get.lazyPut<LoginRepository>(
        () => LoginRepositoryRestClient(restClient: Get.find()));
    Get.put(LoginController());
  }
}
