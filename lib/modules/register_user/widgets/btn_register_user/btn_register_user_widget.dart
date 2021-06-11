import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../register_user_controller.dart';

class BtnRegisterUserWidget extends GetView<RegisterUserController> {
  const BtnRegisterUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => controller.formIsValid(),
        child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text('Cadastrar', style: Theme.of(context).textTheme.button),
        ));
  }
}
