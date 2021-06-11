import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login_controller.dart';

class BottomLoginWidget extends GetView<LoginController> {
  const BottomLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => controller.validForm(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 15,
          ),
          alignment: Alignment.center,
          child: Text(
            'Logar',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
