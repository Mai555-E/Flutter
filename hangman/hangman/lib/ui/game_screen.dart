import 'package:flutter/material.dart';
import 'package:hangman/ui/figure_images.dart';

import 'ui_methods.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String word = "Flutter".toUpperCase();

  List<String> alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0XFF39298a),
          title: Text("Hangman", style: retroStyle(30, FontWeight.w700, Colors.white)),
        ),
        backgroundColor: const Color(0XFF39298a),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                // FigureImage(Game.tries >= 0, "images/1.png"),
                FigureImage(Game.tries >= 1, "images/2.png"),
                FigureImage(Game.tries >= 2, "images/3.png"),
                FigureImage(Game.tries >= 3, "images/4.png"),
                FigureImage(Game.tries >= 4, "images/5.png"),
                FigureImage(Game.tries >= 5, "images/6.png"),
                FigureImage(Game.tries >= 6, "images/7.png"),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: word.split('').map((e) => letter(e.toUpperCase(), !Game.selectedChar.contains(e.toUpperCase()))).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 250.0,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                padding: const EdgeInsets.all(8.0),
                children: alphabets.map((e) {
                  return RawMaterialButton(
                    onPressed: Game.selectedChar.contains(e)
                        ? null // we first check that we didn't selected the button before
                        : () {
                            setState(() {
                              Game.selectedChar.add(e);
                              print(Game.selectedChar);
                              if (!word.split('').contains(e.toUpperCase())) {
                                Game.tries++;
                              }
                            });
                          },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    fillColor: Game.selectedChar.contains(e) ? Colors.black87 : Colors.blue,
                    child: Text(
                      e,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
