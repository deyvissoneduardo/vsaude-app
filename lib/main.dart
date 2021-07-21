import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vsaude_getx/app/modules/splash_screen/splash_screen_bindings.dart';
import 'package:vsaude_getx/app/modules/splash_screen/splash_screen_page.dart';
import 'package:vsaude_getx/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    home: SplashScreenPage(),
    debugShowCheckedModeBanner: false,
    initialBinding: SplashScreenBindings(),
    getPages: AppPages.pages,
  ));
}
