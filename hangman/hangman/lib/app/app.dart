import 'package:flutter/material.dart';
import 'package:hangman/ui/game_screen.dart';

class HangMan extends StatelessWidget {
  const HangMan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,home: GameScreen());
  }
}
