import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:get/get.dart';

import '../../login_controller.dart';

class PasswordLoginWidget extends GetView<LoginController> {
  const PasswordLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPassword,
      validator: (value) {
        var validador = Validator(validators: [
          MinLengthValidator(length: 2),
        ]);
        return validador.validate(
          context: context,
          label: 'Campo Obrigatorio',
          value: value,
        );
      },
      decoration: InputDecoration(hintText: 'Senha'),
    );
  }
}
