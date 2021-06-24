import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/constantes/constants.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/repository/login/login_repository_rest_client.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    controllerEmail.obs;
    controllerPassword.obs;
    formKey.obs;
    super.onInit();
  }

  // valida dados do login
  validForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      emailIsValid();
      passwordIsValid();
      singIn();
    }
  }

  bool emailIsValid() {
    if (!controllerEmail.text.contains('@')) {
      print('emial invalido');
      return false;
    }
    return true;
  }

  bool passwordIsValid() {
    if (controllerPassword.text.isEmpty) {
      print('senha invalida');
      return false;
    }
    return true;
  }

  // funcao de login
  Future<void> singIn() async {
    LoginRepositoryRestClient repository = Get.find();
    await repository.singInApp(
      LoginModel(
        mobileProjectId: Constants.PROJECT_ID,
        userNameOrEmailAddress: controllerEmail.text,
        password: controllerPassword.text,
      ),
    );
    Get.offAndToNamed('/home');
  }

  nextRegisterUser() {
    Get.toNamed('/register_user');
  }
}
