import 'package:get/get.dart';
import './bottom_page_controller.dart';

class BottomPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomPageController());
  }
}
