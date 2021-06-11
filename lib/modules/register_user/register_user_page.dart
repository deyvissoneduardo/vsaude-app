import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vsaude_getx/modules/register_user/widgets/btn_register_user/btn_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_email_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_name_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_password_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_personal_identifier_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_phone_register_user_widget.dart';
import 'package:vsaude_getx/modules/register_user/widgets/fields_form_register_user/field_surname_register_user_widget.dart';
import './register_user_controller.dart';
import 'widgets/fields_form_register_user/field_birthday_register_user_widget.dart';
import 'widgets/fields_form_register_user/field_gender_register_user_widget.dart';
import 'widgets/fields_form_register_user/field_rolenames_register_user_widget.dart';

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
                    //name
                    FieldNameRegisterUserWidget(),
                    //surname
                    FieldSurNameRegisterUserWidget(),
                    //email
                    FieldEmailRegisterUserWidget(),
                    //active
                    //rolesname
                    FieldRolesNamesRegisterUserWidget(),
                    //contato
                    FieldPhoneRegisterUserWidget(),
                    //personalIdentifier
                    FieldPersonalIdentifierRegisterUserWidget(),
                    //gender
                    FieldGenderRegisterUserWidget(),
                    //birtday
                    FieldBirthdayRegisterUserWidget(),
                    //invitation
                    //password
                    FielPasswordRegisterUserWidget(),
                    const SizedBox(height: 10),
                    BtnRegisterUserWidget()
                  ],
                )),
          ),
        ),
      );
    });
  }
}
