import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './more_controller.dart';

class MorePage extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MorePage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'More page',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
