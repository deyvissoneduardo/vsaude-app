import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BottomPageController extends GetxController {
  RxInt tabIndex = 0.obs;
  late PageController pageController = PageController();

  int get index => tabIndex.value;

  void initState() {
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
}
