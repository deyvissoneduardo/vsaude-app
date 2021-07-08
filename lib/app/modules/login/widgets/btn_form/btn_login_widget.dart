import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login_controller.dart';

class BtnLoginWidget extends StatelessWidget {
  const BtnLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => ElevatedButton(
        onPressed: _.validForm,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 15,
          ),
          alignment: Alignment.center,
          child: Text(
            'Logar',
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
