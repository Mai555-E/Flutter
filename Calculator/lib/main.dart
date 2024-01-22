import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
//import 'package:calculator_app/calculator_view.dart';

void main() {
  runApp(const ShowCal());
}

class ShowCal extends StatelessWidget {
  const ShowCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: const Text(
                'Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: const CalNumber()));
  }
}

class CalNumber extends StatefulWidget {
  const CalNumber({super.key});

  @override
  State<CalNumber> createState() => _CalNumberState();
}

class _CalNumberState extends State<CalNumber> {
  String _displayedText = '0';
  String _newNumber = '';
  double result=0, diff = 0;
  static const List<List<String>> _data = [
    ['AC', 'DEL', '%', '/'],
    ['7', '8', '9', '*'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+']
  ];

  void calculator(String button) {
    switch (button) {
      case 'AC':
        _displayedText = '0';

        break;
      case 'DEL':
        if (_displayedText != '0') {
          if (_displayedText.length == 1) {
            _displayedText = '0';
          } else {
            _displayedText = _displayedText.substring(0, _displayedText.length - 1);
          }
        }

        break;

      case '%':
        _displayedText = (double.parse(_displayedText) / 100).toString();
        break;
      // case '/':
      //  _displayedText = (double.parse(_displayedText) / 100).toString();
      // break;

      case '.':
        if (!_displayedText.contains('.')) {
          _displayedText += '.';
        }
        break;

      case '=':
        Expression exp = Parser().parse(_displayedText);
        result = exp.evaluate(EvaluationType.REAL, ContextModel());
        if (result - result.toInt() == 0.0) {
          result.toInt();
          _displayedText = result.toString();
        } else
          _displayedText = result.toString();

        break;

      case '+':
        _displayedText += button;
        break;

      case '-':
        _displayedText += button;

        break;

      case '/':
        _displayedText += button;

        break;

      case '*':
        _displayedText += button;

        break;

      default:
        if (_displayedText != '0') {
          _displayedText += button;
         
        } else {
          _displayedText = button;
        }
    }

    setState(() {});
  }

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
        child: Text(_displayedText, style: const TextStyle(fontSize: 30)),
      ),
      for (var i = 0; i < 4; i++)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [for (var j = 0; j < 4; j++) CalculatorButton(text: _data[i][j])],
          ),
        ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              width: 170.0,
              height: 70.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  side: const BorderSide(color: Colors.brown),
                  elevation: 2,
                  shape: const StadiumBorder(),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          CalculatorButton(text: '.'),
          CalculatorButton(text: '=')
        ],
      )
    ]);
  }

  Widget CalculatorButton({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: SizedBox(
        height: 70.0,
        child: ElevatedButton(
          onPressed: () => calculator(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            side: const BorderSide(color: Colors.brown),
            elevation: 2,
            shape: const CircleBorder(),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
