import 'package:flutter/material.dart';

import 'constants.dart';

class ThemeDataStyle {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      primaryColor: Colors.white, // Product Card Color
      primaryColorLight: kBackgroundColor, // Background Color
      textTheme: Typography.blackCupertino, // Text Color
      highlightColor: kTextLightColor, // Dot Selection Color

      scaffoldBackgroundColor: kPrimaryColor,
      //
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        foregroundColor: kPrimaryColor, // Icon Color
        backgroundColor: Colors.transparent,

        titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,

      primaryColor: Colors.grey, // Product Card Color
      textTheme: Typography.whiteCupertino, // Text Color
      primaryColorLight: const Color.fromARGB(255, 142, 141, 127), // Background Color
      highlightColor: Colors.white, // Dot Selection Color

      scaffoldBackgroundColor: const Color.fromRGBO(23, 108, 129, 1),
      //
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Color.fromRGBO(23, 108, 129, 1),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }

  static ThemeMode currentMode = ThemeMode.light;

  static ThemeMode changeCurrentMode() {
    return currentMode == ThemeMode.light ? currentMode = ThemeMode.dark : currentMode = ThemeMode.light;
  }
}
