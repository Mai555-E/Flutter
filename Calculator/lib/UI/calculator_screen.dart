import 'package:flutter/material.dart';
import 'package:flutter_first_trial/UI/helper.dart';
import 'calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 350,
        height: 200,
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 204, 200, 200),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: const EdgeInsets.all(10),
        child: Text(Helper.displayedText, style: const TextStyle(fontSize: 30)),
      ),
      for (var i = 0; i < 4; i++)
        Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(children: [for (var j = 0; j < 4; j++) CalculatorButton(text: Helper.data[i][j])])),
      Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 170,
            height: 70,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, side: const BorderSide(color: Colors.brown), elevation: 2, shape: const StadiumBorder()),
                child: const Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                )),
          ),
        ),
        CalculatorButton(text: '.'),
        CalculatorButton(text: '=')
      ])
    ]);
  }
}
