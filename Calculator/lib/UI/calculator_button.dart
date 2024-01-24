import 'package:flutter/material.dart';
import 'package:flutter_first_trial/UI/helper.dart';

Widget CalculatorButton({required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 13),
    child: SizedBox(
        height: 70.0,
        child: ElevatedButton(
            onPressed: () => Helper.calculator(text),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              side: const BorderSide(color: Colors.brown),
              elevation: 2,
              shape: const CircleBorder(),
            ),
            child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))),
  );
}
