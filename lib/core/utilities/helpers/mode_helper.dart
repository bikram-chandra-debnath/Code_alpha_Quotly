import 'package:flutter/material.dart';

class ModeHelper {
  ModeHelper._();

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}