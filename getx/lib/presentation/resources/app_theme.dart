import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      textTheme: TextTheme(),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,

      // primaryColor:,
      // textTheme: , // Text Color
      // primaryColorLight: , // Background Color
      // highlightColor: ,

      // scaffoldBackgroundColor: ,
      // //
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        
      ),
    );
  }

  static ThemeMode currentMode = ThemeMode.light;

  static ThemeMode changeCurrentMode() {
    return currentMode == ThemeMode.light ? currentMode = ThemeMode.dark : currentMode = ThemeMode.light;
  }
}
