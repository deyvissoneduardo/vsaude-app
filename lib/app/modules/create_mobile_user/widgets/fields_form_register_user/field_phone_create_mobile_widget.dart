import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:validatorless/validatorless.dart';

import '../../create_mobile_user_controller.dart';

class FieldPhoneCreateMobileWidget extends GetView<CreateMobileUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPhone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(hintText: 'Telefone'),
      validator: Validatorless.multiple([
        Validatorless.required('Campo Obrigatorio'),
      ]),
    );
  }
}
