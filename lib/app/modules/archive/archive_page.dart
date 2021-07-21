import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './archive_controller.dart';

class ArchivePage extends GetView<ArchiveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ArchivePage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Arquivos page',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
