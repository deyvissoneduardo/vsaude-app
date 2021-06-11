import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/models/register_user/register_user_model.dart';
import 'package:vsaude_getx/repository/register_user/register_user_repository_rest_client.dart';

class RegisterUserController extends GetxController {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    controllerEmail.obs;
    controllerEmail.obs;
    controllerPhone.obs;
    controllerPassword.obs;

    formKey.obs;
    super.onInit();
  }

  formIsValid() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      regiterUserApp();
    }
  }

  Future<void> regiterUserApp() async {
    RegisterUserRepositoryRestClient repositoryRestClient = Get.find();
    await repositoryRestClient.registerUser(RegisterUserModel(
      mobileProjectId: 'fcc80c1d-6040-4e57-a23c-abb301653616',
      tenantId: '2',
      fullName: controllerName.text,
      emailAddress: controllerEmail.text,
      phone: controllerPhone.text,
      password: controllerPassword.text,
    ));
    Get.offAndToNamed('home');
  }
}
