import 'package:get/get.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_bindings.dart';
import 'package:vsaude_getx/app/modules/complete_reset_password/complete_reset_password_bindings.dart';
import 'package:vsaude_getx/app/modules/complete_reset_password/complete_reset_password_page.dart';
import 'package:vsaude_getx/app/modules/contato/contato_bindings.dart';
import 'package:vsaude_getx/app/modules/contato/contato_page.dart';
import 'package:vsaude_getx/app/modules/create_mobile_user/create_mobile_user_bindings.dart';
import 'package:vsaude_getx/app/modules/create_mobile_user/create_mobile_user_page.dart';
import 'package:vsaude_getx/app/modules/home/home_bindings.dart';
import 'package:vsaude_getx/app/modules/home/home_page.dart';
import 'package:vsaude_getx/app/modules/login/login_bindings.dart';
import 'package:vsaude_getx/app/modules/login/login_page.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_bindings.dart';
import 'package:vsaude_getx/app/modules/reset_password/reset_password_page.dart';
import 'package:vsaude_getx/app/modules/saude/saude_bindings.dart';
import 'package:vsaude_getx/app/modules/saude/saude_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.BOTTOM_PAGE,
      page: () => BottomPage(),
      binding: BottomPageBindings(),
    ),
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
    GetPage(
      name: AppRoutes.SAUDE_PAGE,
      page: () => SaudePage(),
      binding: SaudeBindings(),
    ),
    GetPage(
      name: AppRoutes.CONTATO_PAGE,
      page: () => ContatoPage(),
      binding: ContatoBindings(),
    ),
  ];
}
