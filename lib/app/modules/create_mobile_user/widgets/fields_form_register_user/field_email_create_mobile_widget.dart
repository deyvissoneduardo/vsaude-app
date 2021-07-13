import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:validatorless/validatorless.dart';

import '../../create_mobile_user_controller.dart';

class FieldEmailCreateMobileWidget extends GetView<CreateMobileUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerEmailAddress,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(hintText: 'Email'),
      validator: Validatorless.multiple([
        Validatorless.required('Campo Obrigatorio'),
        Validatorless.email('Email Invalido')
      ]),
    );
  }
}
