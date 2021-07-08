import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../login_controller.dart';

class PasswordLoginWidget extends GetView<LoginController> {
  const PasswordLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPassword,
      validator: Validatorless.required('Campo Obrigatorio'),
      decoration: InputDecoration(
        labelText: 'Senha',
        hintText: '123456',
      ),
    );
  }
}
