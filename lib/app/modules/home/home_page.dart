import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Home page',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
