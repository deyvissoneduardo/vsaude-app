import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './saude_controller.dart';

class SaudePage extends GetView<SaudeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SaudePage'),
      ),
      body: Container(),
    );
  }
}
