import 'package:flutter/material.dart';

class DeviceHelper {
  DeviceHelper._();

  // ------[appbar height]------
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // ------[Screen height]------
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // ------[Screen width]------
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }
}
