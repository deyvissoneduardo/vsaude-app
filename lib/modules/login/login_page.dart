import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './login_controller.dart';

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
                TextFormField(
                  controller: controller.controllerEmail,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                // senha
                TextFormField(
                  controller: controller.controllerPassword,
                  decoration: InputDecoration(hintText: 'Senha'),
                ),
                // btn logar
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () => controller.singIn(),
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
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
