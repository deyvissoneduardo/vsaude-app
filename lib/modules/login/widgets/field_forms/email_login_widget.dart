import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:get/get.dart';

import '../../login_controller.dart';

class EmailLoginWidget extends GetView<LoginController> {
  const EmailLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerEmail,
      validator: (value) {
        var validador = Validator(validators: [
          RequiredValidator(),
          EmailValidator(),
        ]);
        return validador.validate(
          context: context,
          label: 'Campo Obrigatorio',
          value: value,
        );
      },
      decoration: InputDecoration(hintText: 'Email'),
    );
  }
}
