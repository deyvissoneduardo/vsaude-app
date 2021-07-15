import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends BottomNavyBarItem {
  late String titleText;
  late Icon icon;
  BottomNavigatorWidget({
    required icon,
    required titleText,
  }) : super(
          title: Text(titleText),
          icon: icon,
          textAlign: TextAlign.center,
        );
}
