import 'package:flutter/material.dart';

TextStyle retroStyle(double size, [FontWeight? fw, Color? color]) {
  return TextStyle(fontFamily: "RetroGaming", fontSize: size, fontWeight: fw, color: color);
}

class Game {
  static int tries = 1;
  static List<String> selectedChar = [];
}

Color background = Color(0XFF39298a);
