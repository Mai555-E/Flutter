import 'package:flutter/material.dart';

import '../../constants.dart';

class ColorsDot extends StatelessWidget {
  ColorsDot({super.key, required this.fillText, required this.isSlected});

  final Color fillText;
  bool isSlected = false;
  @override
  Widget build(BuildContext context) {
  
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
        padding: const EdgeInsets.all(3),
        height: 24,
        width: 24,
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: isSlected ? kTextLightColor : Colors.transparent)),
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kTextColor), color: fillText),
          
        ));
  }
}