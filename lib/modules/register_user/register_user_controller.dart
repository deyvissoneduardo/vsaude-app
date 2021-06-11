import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vsaude_getx/models/register_user/register_user_model.dart';
import 'package:vsaude_getx/repository/register_user/register_user_repository_rest_client.dart';

class RegisterUserController extends GetxController {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerSurName = TextEditingController();
  TextEditingController controllerEmailAddress = TextEditingController();
  TextEditingController controllerRoles = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPhoneNumber = TextEditingController();
  TextEditingController controllerPersonalIdentifier = TextEditingController();
  TextEditingController controllerGender = TextEditingController();
  TextEditingController controllerBirthday = TextEditingController();
  TextEditingController controllerInvitation = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  onInit() {
    // adc observaveis na variavel
    controllerName.obs;
    controllerSurName.obs;
    controllerEmailAddress.obs;
    controllerRoles.obs;
    controllerPassword.obs;
    controllerPhoneNumber.obs;
    controllerPersonalIdentifier.obs;
    controllerGender.obs;
    controllerBirthday.obs;
    controllerInvitation.obs;

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
      tenantId: '2',
      name: controllerName.text,
      surname: controllerSurName.text,
      emailAddress: controllerEmailAddress.text,
      isActive: 'true',
      password: controllerPassword.text,
      personalIdentifier: controllerPersonalIdentifier.text,
      roles: controllerRoles.text,
      phoneNumber: controllerPhoneNumber.text,
      gender: controllerGender.text,
      birthday: controllerBirthday.text,
      invitation: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
    ));
    Get.offAndToNamed('/home');
  }
}
