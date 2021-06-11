import 'package:get/get.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_register_user/rest_client_registger_user.dart';
import 'package:vsaude_getx/repository/register_user/register_user_repository_rest_client.dart';
import './register_user_controller.dart';

class RegisterUserBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestClient>(() => RestClientRegistgerUser());
    Get.lazyPut<RegisterUserRepositoryRestClient>(
        () => RegisterUserRepositoryRestClient(restClient: Get.find()));
    Get.put(RegisterUserController());
  }
}
