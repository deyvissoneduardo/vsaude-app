import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_controller.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RestClientService>(RestClientService());

    Get.put<HomeController>(HomeController());
    Get.put<BottomPageController>(BottomPageController());
  }
}
