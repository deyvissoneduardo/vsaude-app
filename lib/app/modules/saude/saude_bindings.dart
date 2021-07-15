import 'package:get/get.dart';
import './saude_controller.dart';

class SaudeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SaudeController());
  }
}
