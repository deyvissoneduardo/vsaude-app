import 'package:get/get.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_controller.dart';

class SaudeController extends GetxController {
  BottomPageController bottomController = BottomPageController();
  @override
  void onReady() {
    bottomController.tabIndex.value;
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
