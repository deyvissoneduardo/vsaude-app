import 'package:get/get.dart';
import 'package:flutter/material.dart';
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
                    TextFormField(
                        controller: controller.controllerName,
                        decoration: InputDecoration(hintText: 'Nome')),
                    TextFormField(
                        controller: controller.controllerEmail,
                        decoration: InputDecoration(hintText: 'Email')),
                    TextFormField(
                        controller: controller.controllerPhone,
                        decoration: InputDecoration(hintText: 'Telefone')),
                    TextFormField(
                        controller: controller.controllerPassword,
                        decoration: InputDecoration(hintText: 'Senha')),
                    const SizedBox(height: 8),
                    ElevatedButton(
                        onPressed: () => controller.regiterUserApp(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          alignment: Alignment.center,
                          child: Text('Cadastrar',
                              style: Theme.of(context).textTheme.button),
                        ))
                  ],
                )),
          ),
        ),
      );
    });
  }
}
