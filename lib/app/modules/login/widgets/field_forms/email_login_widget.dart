import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../login_controller.dart';

class EmailLoginWidget extends GetView<LoginController> {
  const EmailLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerEmail,
      keyboardType: TextInputType.emailAddress,
      validator: Validatorless.multiple([
        Validatorless.required('Campo Obrigatorio'),
        Validatorless.email('Email Invalido')
      ]),
      decoration: InputDecoration(
        hintText: 'email@email.com',
        labelText: 'Email',
      ),
    );
  }
}
