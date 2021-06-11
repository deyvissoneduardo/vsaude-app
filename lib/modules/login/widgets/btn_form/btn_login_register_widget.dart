import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:vsaude_getx/modules/login/login_controller.dart';

class BtnLoginRegisterWidget extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => controller.nextRegisterUser(),
        child: Container(
          alignment: Alignment.topRight,
          child: Text(
            'Cadastre-se',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ));
  }
}
