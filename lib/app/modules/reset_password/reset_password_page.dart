import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './reset_password_controller.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.center,
            child: ListView(
              children: [
                Text(
                    'email => ${controller.loginController.controllerEmail.text}'),
                TextFormField(
                  controller: controller.controllerToken,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: InputDecoration(
                    labelText: 'Token',
                    hintText: 'Insira o Token',
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => controller.validateCodeResetPassword(),
                  child: Text('Token'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
