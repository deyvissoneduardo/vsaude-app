import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:vsaude_getx/app/modules/archive/archive_page.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_controller.dart';
import 'package:vsaude_getx/app/modules/contato/contato_page.dart';
import 'package:vsaude_getx/app/modules/home/home_page.dart';
import 'package:vsaude_getx/app/modules/more/more_page.dart';
import 'package:vsaude_getx/app/modules/saude/saude_page.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                ArchivePage(),
                ContatoPage(),
                MorePage(),
              ],
            ),
            bottomNavigationBar: Obx(
              () => BottomNavyBar(
                selectedIndex: _.index,
                showElevation: true,
                iconSize: 25,
                curve: Curves.easeInCirc,
                onItemSelected: (index) {
                  _.changeTabIndex(index);
                  _.pageController.jumpToPage(index);
                },
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                      textAlign: TextAlign.center,
                      icon: Icon(Icons.home_outlined),
                      title: Center(child: Text('Home')),
                      activeColor: Colors.orange,
                      inactiveColor: Colors.black),
                  BottomNavyBarItem(
                    textAlign: TextAlign.center,
                    icon: Icon(Icons.access_alarm_rounded),
                    title: Center(child: Text('Saúde')),
                    activeColor: Colors.orange,
                    inactiveColor: Colors.black,
                  ),
                  BottomNavyBarItem(
                    textAlign: TextAlign.center,
                    icon: Icon(Icons.archive),
                    title: Center(child: Text('Arquivos')),
                    activeColor: Colors.orange,
                    inactiveColor: Colors.black,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.info_outline),
                    textAlign: TextAlign.center,
                    title: Center(child: Text('Contato')),
                    inactiveColor: Colors.black,
                    activeColor: Colors.orange,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.more_vert_sharp),
                    textAlign: TextAlign.center,
                    title: Center(child: Text('Mais')),
                    inactiveColor: Colors.black,
                    activeColor: Colors.orange,
                  ),
                ],
              ),
            ));
      });
    });
  }
}
