import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:validatorless/validatorless.dart';

import '../../create_mobile_user_controller.dart';

class FieldFullNameCreateMobileWidget
    extends GetView<CreateMobileUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerFullName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(hintText: 'Nome'),
      validator: Validatorless.multiple([
        Validatorless.required('Campo Obrigatorio'),
      ]),
    );
  }
}
