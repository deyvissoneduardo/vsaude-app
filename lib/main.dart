import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vsaude_getx/app/modules/login/login_bindings.dart';
import 'package:vsaude_getx/app/modules/login/login_page.dart';
import 'package:vsaude_getx/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    home: LoginPage(),
    initialBinding: LoginBindings(),
    getPages: AppPages.pages,
  ));
}
