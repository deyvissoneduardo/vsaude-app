import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/constantes/constants.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/repository/login/login_repository_rest_client.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail =
      TextEditingController(text: 'lbadiaasas@gmail.com');
  TextEditingController controllerPassword =
      TextEditingController(text: '123qwe');
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
    print('clicou no botao');
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      emailIsValid();
      passwordIsValid();
      singIn();
    }
  }

  bool emailIsValid() {
    if (!controllerEmail.text.contains('@')) {
      Get.dialog(AlertDialog(
          title: Text('Email'),
          content: Text('Email invalido'),
          actions: [
            TextButton(onPressed: () => Get.back(), child: Text('OK'))
          ]));
      return false;
    }
    return true;
  }

  bool passwordIsValid() {
    if (controllerPassword.text.isEmpty) {
      Get.dialog(AlertDialog(
          title: Text('Senha'),
          content: Text('Senha vazia'),
          actions: [
            TextButton(onPressed: () => Get.back(), child: Text('OK'))
          ]));
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
    Get.offNamedUntil(AppRoutes.HOME, (route) => false);
  }

  nextRegisterUser() {
    Get.toNamed(AppRoutes.CREATE_MOBILE);
  }
}
