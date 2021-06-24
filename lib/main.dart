import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'app/modules/create_mobile_user/create_mobile_user_bindings.dart';
import 'app/modules/create_mobile_user/create_mobile_user_page.dart';
import 'app/modules/home/home_bindings.dart';
import 'app/modules/home/home_page.dart';
import 'app/modules/login/login_bindings.dart';
import 'app/modules/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
          binding: LoginBindings(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: '/register_user',
          page: () => CreateMobileUserPage(),
          binding: CreateMobileUserBindings(),
        )
      ],
    );
  }
}
