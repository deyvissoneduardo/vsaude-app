import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login_controller.dart';

class BtnLoginResetPassword extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.all(8),
      child: TextButton(
          onPressed: () => controller.resetPasword(),
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width / 3,
            alignment: Alignment.center,
            child: Text(
              'Reseta Senha',
              style: Theme.of(context).textTheme.button,
            ),
          )),
    );
  }
}
