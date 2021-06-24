import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './login_controller.dart';
import 'widgets/btn_form/btn_login_register_widget.dart';
import 'widgets/btn_form/btn_login_widget.dart';
import 'widgets/field_forms/email_login_widget.dart';
import 'widgets/field_forms/password_login_widget.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
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
                    BtnLoginWidget(),
                    SizedBox(height: 10),
                    BtnLoginRegisterWidget()
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
