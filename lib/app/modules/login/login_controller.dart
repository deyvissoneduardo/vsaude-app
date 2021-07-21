import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/constantes/constants.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/models/reset_password/reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/login/login_repository_rest_client.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_rest_client.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail =
      TextEditingController(text: 'lbadias@gmail.com');
  TextEditingController controllerPassword =
      TextEditingController(text: '123qwe');
  GlobalKey<FormState> formKey = GlobalKey();
  LoginRepositoryRestClient repository = Get.find();
  LocalDataUserRestClient repositoryLocal = LocalDataUserRestClient();

  @override
  void onInit() {
    controllerEmail.obs;
    controllerPassword.obs;
    formKey.obs;
    super.onInit();
  }

  // valida dados do login
  validForm() {
    singIn();
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      singIn();
    }
  }

  //valida email reseta senha
  validEmailResetSenha() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      resetPasword();
    }
  }

  // funcao de login
  Future<void> singIn() async {
    try {
      await repository.singInApp(LoginModel(
        mobileProjectId: Constants.PROJECT_ID,
        userNameOrEmailAddress: controllerEmail.text,
        password: controllerPassword.text,
      ));
      saveDataLocal();
      Get.back();
    } on DioError catch (e) {
      repository.error(e);
    }
  }

  Future<bool> saveDataLocal() async {
    await repositoryLocal.saveDataUser(LoginModel(
      mobileProjectId: Constants.PROJECT_ID,
      userNameOrEmailAddress: controllerEmail.text,
      password: controllerPassword.text,
    ));
    return true;
  }

  nextRegisterUser() => Get.toNamed(AppRoutes.CREATE_MOBILE);

  Future<void> resetPasword() async {
    String email = controllerEmail.text.trim();
    await repository.resetPassword(ResetPasswordModel(
      email: email,
      mobileProjectId: Constants.PROJECT_ID,
    ));
    Get.offNamedUntil(
      AppRoutes.RESET_PASSWORD,
      (route) => false,
      arguments: controllerEmail.text,
    );
  }
}
