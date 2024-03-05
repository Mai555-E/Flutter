import 'dart:math';
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int leftImageNumber = 3;
  int rightImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    children: [
      Text(leftImageNumber == rightImageNumber ? ' Congratulations, you succeed.' : 'Try again',
          style: const TextStyle(fontSize: 42.0, color: Colors.white)),

      Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(children: [
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            rightImageNumber = Random().nextInt(8) + 1;
                            leftImageNumber = Random().nextInt(8) + 1;
                          });
                        },
                        child: Image.asset('images/image-$rightImageNumber.png')))),
                        
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          leftImageNumber = Random().nextInt(8) + 1;
                          rightImageNumber = Random().nextInt(8) + 1;
                        });
                      },
                      child: Image.asset('images/image-$leftImageNumber.png'))),
            ),
          ]))
    ]);
  }
}
