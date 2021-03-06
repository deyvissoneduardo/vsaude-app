import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:validatorless/validatorless.dart';
import '../../create_mobile_user_controller.dart';

class FielPasswordCreateMobileWidget
    extends GetView<CreateMobileUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPassword,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(hintText: 'Senha'),
      validator: Validatorless.multiple([
        Validatorless.required('Campo Obrigatorio'),
      ]),
    );
  }
}
