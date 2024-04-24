import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getDarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor:  Colors.teal[400],
    );
  }

  static ThemeData getLightTheme() {
    return ThemeData();
  }
}
