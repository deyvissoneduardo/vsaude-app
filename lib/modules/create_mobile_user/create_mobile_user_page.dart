import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'create_mobile_user_controller.dart';
import 'widgets/btn_register_user/btn_register_user_widget.dart';
import 'widgets/fields_form_register_user/fields_form_register_user.dart';

class CreateMobileUserPage extends GetView<CreateMobileUserController> {
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
                    FieldFullNameCreateMobileWidget(),
                    //email
                    FieldEmailCreateMobileWidget(),
                    //contato
                    FieldPhoneCreateMobileWidget(),
                    // senha
                    FielPasswordCreateMobileWidget(),
                    const SizedBox(height: 20),
                    BtnCreateMobileWidget()
                  ],
                )),
          ),
        ),
      );
    });
  }
}
