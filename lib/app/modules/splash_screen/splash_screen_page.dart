import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_screen_controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
