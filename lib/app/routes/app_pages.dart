import 'package:get/get.dart';
import 'package:vsaude_getx/app/modules/complete_reset_password/complete_reset_password_bindings.dart';
import 'package:vsaude_getx/app/modules/complete_reset_password/complete_reset_password_page.dart';
import 'package:vsaude_getx/app/modules/create_mobile_user/create_mobile_user_bindings.dart';
import 'package:vsaude_getx/app/modules/create_mobile_user/create_mobile_user_page.dart';
import 'package:vsaude_getx/app/modules/home/home_bindings.dart';
import 'package:vsaude_getx/app/modules/home/home_page.dart';
import 'package:vsaude_getx/app/modules/login/login_bindings.dart';
import 'package:vsaude_getx/app/modules/login/login_page.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_bindings.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.CREATE_MOBILE,
      page: () => CreateMobileUserPage(),
      binding: CreateMobileUserBindings(),
    ),
    GetPage(
      name: AppRoutes.RESET_PASSWORD,
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBindings(),
    ),
    GetPage(
      name: AppRoutes.COMPLETE_PASSWORD,
      page: () => CompleteResetPasswordPage(),
      binding: CompleteResetPasswordBindings(),
    ),
  ];
}
