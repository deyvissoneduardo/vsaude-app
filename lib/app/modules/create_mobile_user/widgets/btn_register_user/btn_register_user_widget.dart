import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../create_mobile_user_controller.dart';

class BtnCreateMobileWidget extends GetView<CreateMobileUserController> {
  const BtnCreateMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => controller.formIsValid(),
        child: Container(
          alignment: Alignment.center,
          child: Text('Cadastrar', style: Theme.of(context).textTheme.button),
        ));
  }
}
