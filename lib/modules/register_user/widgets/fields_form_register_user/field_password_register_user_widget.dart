import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:get/state_manager.dart';
import 'package:vsaude_getx/modules/register_user/register_user_controller.dart';

class FielPasswordRegisterUserWidget extends GetView<RegisterUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPassword,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(hintText: 'Senha'),
      validator: (value) {
        var validador = Validator(validators: [
          RequiredValidator(),
        ]);
        return validador.validate(
          context: context,
          label: 'Campo Obrigatorio',
          value: value,
        );
      },
    );
  }
}
