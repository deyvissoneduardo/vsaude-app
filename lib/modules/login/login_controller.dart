import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/models/login/login_model.dart';
import 'package:vsaude_getx/repository/login/login_repository.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Future<void> onInit() async {
    await singIn();
    controllerEmail.obs;
    controllerPassword.obs;
    formKey.obs;
    super.onInit();
  }

  Future<void> singIn() async {
    LoginRepository repository = Get.find();
    if (controllerEmail.text.isEmpty) {
      print('********email vazio*******');
      return null;
    }
    if (controllerPassword.text.isEmpty) {
      print('********* senha vazia **********');
      return null;
    }
    await repository.singInApp(LoginModel(
        mobileProjectId: 'fcc80c1d-6040-4e57-a23c-abb301653616',
        userNameOrEmailAddrees: controllerEmail.text,
        password: controllerPassword.text));
    Get.toNamed('/home');
  }
}
