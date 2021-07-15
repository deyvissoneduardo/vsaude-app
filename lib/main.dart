import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_bindings.dart';
import 'package:vsaude_getx/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    home: BottomPage(),
    debugShowCheckedModeBanner: false,
    initialBinding: BottomPageBindings(),
    getPages: AppPages.pages,
  ));
}
