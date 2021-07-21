import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vsaude_getx/app/core/models/login/user_logged_enum.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_rest_client.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class BottomPageController extends GetxController {
  RxInt tabIndex = 0.obs;
  RxBool isAuthenticed = false.obs;
  int get index => tabIndex.value;

  late PageController pageController = PageController();
  LocalDataUserRestClient repositoryLocal = LocalDataUserRestClient();
  final _logged = UserLoggedEnum.empty.obs;

  @override
  void onInit() {
    pageController = PageController();
    ever<UserLoggedEnum>(_logged, checkIsLogged);
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  changeTabIndex(int index) async {
    tabIndex.value = index;
    update();
    if (tabIndex.value == 1) {
      await checkLogin();
      update();
    }
  }

  Future<void> checkLogin() async {
    final sp = await SharedPreferences.getInstance();
    if (sp.containsKey('user')) {
      _logged(UserLoggedEnum.authenticate);
    } else {
      _logged(UserLoggedEnum.unauthenticate);
      update();
    }
  }

  void checkIsLogged(UserLoggedEnum userLogged) {
    switch (userLogged) {
      case UserLoggedEnum.authenticate:
        Get.back();
        break;
      case UserLoggedEnum.unauthenticate:
        Get.toNamed(AppRoutes.LOGIN);
        break;
      case UserLoggedEnum.empty:
      default:
        break;
    }
  }
}
