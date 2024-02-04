import 'package:flutter/material.dart';

import '../UI/calculator_screen.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
  return const MaterialApp(home: CalculatorScreen());
  }
}
