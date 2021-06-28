import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/create_mobile_user/create_mobile_user_repository_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'create_mobile_user_controller.dart';

class CreateMobileUserBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClient>(RestClientService());
    Get.put<CreateMobileUserRepositoryRestClient>(
        CreateMobileUserRepositoryRestClient(restClient: Get.find()));
    Get.put(CreateMobileUserController());
  }
}
