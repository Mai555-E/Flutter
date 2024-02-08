import 'package:flutter/material.dart';
import 'package:tic_tac_toe/data/data.dart';
import 'package:tic_tac_toe/ui/player_logic.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyPlayer player = MyPlayer();
  bool isXPlayer = true;
  String win = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Container(
          child: Column(children: [
            const SizedBox(height: 20),
            const Text("Tic-Tac-Toe",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
            Text(win, textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: secondColor)),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          if (win == '') {
                            if (player.border[index] == '') {
                              setState(() {
                                player.border[index] = isXPlayer ? 'X' : 'O';

                                if ((player.border[0] == player.border[1] &&
                                        player.border[0] == player.border[2] &&
                                        player.border[0] != '') ||
                                    (player.border[0] == player.border[3] &&
                                        player.border[0] == player.border[6] &&
                                        player.border[0] != '') ||
                                    (player.border[0] == player.border[4] &&
                                        player.border[0] == player.border[8] &&
                                        player.border[0] != '') ||
                                    (player.border[2] == player.border[4] &&
                                        player.border[2] == player.border[6] &&
                                        player.border[2] != '') ||
                                    (player.border[2] == player.border[5] &&
                                        player.border[2] == player.border[8] &&
                                        player.border[2] != '') ||
                                    (player.border[1] == player.border[4] &&
                                        player.border[1] == player.border[7] &&
                                        player.border[1] != '') ||
                                    (player.border[3] == player.border[4] &&
                                        player.border[3] == player.border[5] &&
                                        player.border[3] != '') ||
                                    (player.border[6] == player.border[7] &&
                                        player.border[6] == player.border[8] &&
                                        player.border[6] != '')) {
                                  win = "PLayer ${isXPlayer ? 'X' : 'O'}  win";
                                } else {
                                  bool draw = true;
                                  for (int i = 0; i < 9; i++) {
                                    if (player.border[i] == '') {
                                      draw = false;
                                      break;
                                    }
                                  }
                                  win = draw == true ? "There is no winner" : '';
                                }
                                isXPlayer = !isXPlayer;
                              });
                            }
                          } else {
                            return ;
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: borderColor,
                          ),
                          child: Text(
                            "${player.border[index]}",
                            style: TextStyle(color: player.playerColor[index], fontSize: 40),
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    player = MyPlayer();
                    win = '';
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("RESTART", style: TextStyle(color: secondColor, fontSize: 16)),
                ))
          ]),
        ),
      ),
    );
  }
}
