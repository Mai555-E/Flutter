import 'package:flutter/material.dart';
import '../ui/helper.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text('Calculator', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))),
        body: Column(children: [
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
            child: Text(Helper.displayedText.toString(), style: const TextStyle(fontSize: 30)),
          ),
          for (var i = 0; i < 4; i++)
            Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [for (var j = 0; j < 4; j++) calculatorButton(text: Helper.data[i][j])])),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [calculatorButton(text: '0'), calculatorButton(text: '.'), calculatorButton(text: '=')])
        ]));
  }

  Widget calculatorButton({required String text}) {
    return SizedBox(
        height: 70,
        width: text != '0' ? null : 170,
        child: ElevatedButton(
            onPressed: () => setState(() => Helper.calculator(text)),
            style: ElevatedButton.styleFrom(
              backgroundColor: text != '0' ? Colors.blueGrey : Colors.grey,
              side: const BorderSide(color: Colors.brown),
              elevation: 2,
              shape: text != '0' ? const CircleBorder() : const StadiumBorder(),
            ),
            child: Text(text, style: TextStyle(fontSize: text != '0' ? 18 : 30, fontWeight: FontWeight.bold))));
  }
}
