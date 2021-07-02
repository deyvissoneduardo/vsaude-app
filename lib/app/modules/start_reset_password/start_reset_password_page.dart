import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './start_reset_password_controller.dart';

class StartResetPasswordPage extends GetView<StartResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(controller.loginController.controllerEmail.text),
        ),
      ),
    );
  }
}
