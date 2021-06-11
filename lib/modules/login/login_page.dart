import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vsaude_getx/modules/login/widgets/btn_form/bottom_login_widget.dart';
import './login_controller.dart';
import 'widgets/field_forms/email_login_widget.dart';
import 'widgets/field_forms/password_login_widget.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          alignment: Alignment.center,
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // email
                EmailLoginWidget(),
                // senha
                PasswordLoginWidget(),
                // btn logar
                BottomLoginWidget()
              ],
            ),
          ),
        ),
      );
    });
  }
}
