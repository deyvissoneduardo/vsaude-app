import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_controller.dart';
import 'package:vsaude_getx/app/modules/contato/contato_page.dart';
import 'package:vsaude_getx/app/modules/home/home_page.dart';
import 'package:vsaude_getx/app/modules/saude/saude_page.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomPageController>(builder: (_) {
      return Scaffold(
          body: PageView(
            controller: _.pageController,
            onPageChanged: (index) {
              _.changeTabIndex(index);
            },
            children: [
              HomePage(),
              SaudePage(),
              ContatoPage(),
            ],
          ),
          bottomNavigationBar: Obx(
            () => BottomNavyBar(
              selectedIndex: _.index,
              showElevation: true,
              onItemSelected: (index) {
                _.changeTabIndex(index);
                _.pageController.jumpToPage(index);
              },
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    activeColor: Colors.orange,
                    inactiveColor: Colors.black),
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Saúde'),
                  activeColor: Colors.orange,
                  inactiveColor: Colors.black,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Contato'),
                  inactiveColor: Colors.black,
                  activeColor: Colors.orange,
                ),
              ],
            ),
          ));
    });
  }
}
