import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/models/create_mobile/create_mobile_user_model.dart';
import 'package:vsaude_getx/app/repository/create_mobile_user/create_mobile_user_repository_rest_client.dart';

class CreateMobileUserController extends GetxController {
  TextEditingController controllerFullName =
      TextEditingController(text: 'doutor');
  TextEditingController controllerEmailAddress =
      TextEditingController(text: 'doutor@gmail.com');
  TextEditingController controllerPassword =
      TextEditingController(text: '123456');
  TextEditingController controllerPhone =
      TextEditingController(text: '61983307534');

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    // adc observaveis na variavel
    controllerEmailAddress.obs;
    controllerPassword.obs;
    controllerFullName.obs;
    controllerPhone.obs;

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
    CreateMobileUserRepositoryRestClient repositoryRestClient = Get.find();
    await repositoryRestClient.registerUser(CreateMobileUserModel(
      mobileProjectId: 'fcc80c1d-6040-4e57-a23c-abb301653616',
      tenantId: '2',
      fullName: controllerFullName.text,
      emailAddress: controllerEmailAddress.text,
      phone: controllerPhone.text,
      password: controllerPassword.text,
    ));
    Get.offAndToNamed('/home');
  }
}
