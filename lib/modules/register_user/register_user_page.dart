import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vsaude_getx/modules/register_user/widgets/btn_register_user/btn_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_email_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_name_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_password_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_phone_register_user_widget.dart';
import './register_user_controller.dart';

class RegisterUserPage extends GetView<RegisterUserController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cadastro'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    FieldNameRegisterUserWidget(),
                    FieldEmailRegisterUserWidget(),
                    FieldPhoneRegisterUserWidget(),
                    FielPasswordRegisterUserWidget(),
                    const SizedBox(height: 8),
                    BtnRegisterUserWidget()
                  ],
                )),
          ),
        ),
      );
    });
  }
}
