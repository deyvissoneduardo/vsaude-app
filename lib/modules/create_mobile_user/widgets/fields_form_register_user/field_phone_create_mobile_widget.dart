import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_validation/form_validation.dart';
import 'package:get/state_manager.dart';
import 'package:vsaude_getx/modules/create_mobile_user/create_mobile_user_controller.dart';

class FieldPhoneCreateMobileWidget extends GetView<CreateMobileUserController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.controllerPhone,
      inputFormatters: [
        TelefoneInputFormatter(),
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(hintText: 'Telefone'),
      validator: (value) {
        var validador = Validator(validators: [
          RequiredValidator(),
          PhoneNumberValidator(),
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