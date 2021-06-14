import 'package:get/get.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/core/rest_client/rest_client_register_user/rest_client_registger_user.dart';
import 'package:vsaude_getx/repository/create_mobile_user/create_mobile_user_repository_rest_client.dart';
import 'create_mobile_user_controller.dart';

class CreateMobileUserBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestClient>(() => RestClientRegistgerUser());
    Get.lazyPut<CreateMobileUserRepositoryRestClient>(
        () => CreateMobileUserRepositoryRestClient());
    Get.put(CreateMobileUserController());
  }
}