import 'package:flutter/material.dart';

class MyPlayer {
  int contPlayer = 0;
  String playerWin = '';

  List<String> border = ['', '', '', '', '', '', '', '', ''];
  List<Color> playerColor = List.generate(9, (index) => Colors.blue);
}
