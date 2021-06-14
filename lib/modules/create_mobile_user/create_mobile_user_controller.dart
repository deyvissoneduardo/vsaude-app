import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CreateMobileUserController extends GetxController {
  TextEditingController controllerMobileProjectId = TextEditingController();
  TextEditingController controllerFullName = TextEditingController();
  TextEditingController controllerEmailAddress = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    // adc observaveis na variavel
    controllerEmailAddress.obs;
    controllerPassword.obs;
    controllerMobileProjectId.obs;
    controllerFullName.obs;
    controllerPhone.obs;

    formKey.obs;
    super.onInit();
  }

  formIsValid() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      //regiterUserApp();
    }
  }

  // Future<void> regiterUserApp() async {
  //   RegisterUserRepositoryRestClient repositoryRestClient = Get.find();
  //   await repositoryRestClient.registerUser(CreateMobileUserModel());
  //   Get.offAndToNamed('/home');
  // }
}
