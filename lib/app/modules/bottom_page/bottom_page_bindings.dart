import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/home/home_controller.dart';
import 'package:vsaude_getx/app/modules/saude/saude_controller.dart';
import './bottom_page_controller.dart';

class BottomPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());
    Get.put<LocalDataUserRestClient>(LocalDataUserRestClient());

    Get.put<BottomPageController>(BottomPageController());
    Get.put<HomeController>(HomeController());
    Get.delete();
    Get.put<SaudeController>(SaudeController());
  }
}
