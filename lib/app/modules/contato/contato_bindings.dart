import 'package:get/get.dart';
import './contato_controller.dart';

class ContatoBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ContatoController());
  }
}
