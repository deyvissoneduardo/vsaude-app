import 'package:get/get.dart';
import 'package:vsaude_getx/app/routes/app_routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAllNamed(AppRoutes.BOTTOM_PAGE);
    super.onInit();
  }
}
