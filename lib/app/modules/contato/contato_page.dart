import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './contato_controller.dart';

class ContatoPage extends GetView<ContatoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ContatoPage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Contato page',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
