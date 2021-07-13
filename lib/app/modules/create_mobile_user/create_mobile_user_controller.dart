import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/constantes/constants.dart';
import 'package:vsaude_getx/app/core/models/create_mobile/create_mobile_user_model.dart';
import 'package:vsaude_getx/app/core/repository/create_mobile_user/create_mobile_user_repository_rest_client.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class CreateMobileUserController extends GetxController {
  TextEditingController controllerFullName = TextEditingController();
  TextEditingController controllerEmailAddress = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    controllerEmailAddress.obs;
    controllerPassword.obs;
    controllerFullName.obs;
    controllerPhone.obs;

    formKey.obs;
    super.onInit();
  }

  @override
  void dispose() {
    controllerEmailAddress.obs;
    controllerPassword.obs;
    controllerFullName.obs;
    controllerPhone.obs;

    formKey.obs;
    super.dispose();
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
      mobileProjectId: Constants.PROJECT_ID,
      tenantId: Constants.TENANT_ID,
      fullName: controllerFullName.text.trim(),
      emailAddress: controllerEmailAddress.text.trim(),
      phone: controllerPhone.text.trim(),
      password: controllerPassword.text.trim(),
    ));
    Get.offAndToNamed(AppRoutes.HOME);
  }
}
