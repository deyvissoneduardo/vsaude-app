import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/models/login/login_model.dart';
import 'package:vsaude_getx/repository/login/login_repository_rest_client.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail =
      TextEditingController(text: 'lbadias@gmail.com');
  TextEditingController controllerPassword =
      TextEditingController(text: '123qwe');
  GlobalKey<FormState> formKey = GlobalKey();

  // @override
  // Future<void> onInit() async {
  //   await singIn();
  //   controllerEmail.obs;
  //   controllerPassword.obs;
  //   formKey.obs;
  //   super.onInit();
  // }

  @override
  onInit() {
    controllerEmail.obs;
    controllerPassword.obs;
    formKey.obs;
    super.onInit();
  }

  Future<void> singIn() async {
    LoginRepositoryRestClient repository = Get.find();
    // if (controllerEmail.text.isEmail) print('*** campo email vazio***');
    // if (!controllerEmail.text.contains('@')) print('**email invalido**');
    // if (controllerPassword.text.isEmpty) print('**senha invalida**');
    print(controllerEmail.text);
    print(controllerPassword.text);
    await repository.singInApp(
      LoginModel(
        mobileProjectId: 'fcc80c1d-6040-4e57-a23c-abb301653616',
        userNameOrEmailAddress: controllerEmail.text,
        password: controllerPassword.text,
      ),
    );
    Get.toNamed('/home');
  }
}
