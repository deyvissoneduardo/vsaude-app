import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './saude_controller.dart';

class SaudePage extends GetView<SaudeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SaudePage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Saúde Page',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
