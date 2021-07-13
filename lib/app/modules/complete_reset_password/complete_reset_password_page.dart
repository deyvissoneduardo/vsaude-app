import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './complete_reset_password_controller.dart';

class CompleteResetPasswordPage
    extends GetView<CompleteResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text('CompleteResetPasswordPage'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(controller.loginController.controllerEmail.text),
              const SizedBox(height: 5),
              Text(controller.resetPasswordController.controllerToken.text),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: controller.controllerNewPassword,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Nova Senha',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.newPassword(),
                child: Text('Nova Senha'),
              )
            ],
          ),
        ),
      );
    });
  }
}
