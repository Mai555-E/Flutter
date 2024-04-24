import 'package:electrical_store_mobile/ui/constants.dart';
import 'package:flutter/material.dart';

class ThemeDataStyle {
  static final light = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
          primary: Colors.black, background: kPrimaryColor, onPrimary: Colors.black38, secondary: kSecondaryColor));

  static final dark = ThemeData(
      useMaterial3: true,
         textTheme: TextTheme().apply(bodyColor: Colors.white,displayColor: Colors.white),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(primary: Colors.white, onPrimary: Colors.white,background: Colors.black87, secondary: Colors.white,
      ));

  static ThemeMode currentMode = ThemeMode.light;

  static ThemeMode changeCurrentMode() {
    return currentMode == ThemeMode.light ? currentMode = ThemeMode.dark : currentMode = ThemeMode.light;
  }
}
