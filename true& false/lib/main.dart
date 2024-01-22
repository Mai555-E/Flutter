

import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Info',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Padding(
          padding: EdgeInsets.all(15.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  void checkUserAnswer(bool whatUserPicked) {
    setState(() {
      bool correctAnswer = questionGroup[questionNumber].questionAnswer;
      if (whatUserPicked == correctAnswer) {
        myAnswer.add(const Padding(
          padding: EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_up,
            color: Colors.green,
          ),
        ));
      } else {
        myAnswer.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(Icons.thumb_down, color: Colors.red),
          ),
        );
      }
      if (questionGroup.length - 1 > questionNumber) questionNumber++;
    });
  }

  List<Padding> myAnswer = [];

  List<Question> questionGroup = [
    Question(
        q: "Number of planets in our solar system is 8",
        i: "images/image-1.jpg",
        a: true),
    Question(q: "does cat eat vegetables", i: "images/image-2.jpg", a: true),
    Question(q: "china exist in  africa", i: "images/image-3.jpg", a: false),
    Question(q: "Earth is flat", i: "images/image-4.jpg", a: true),
  ];

  Question question1 = Question(
      q: "Number of planets in our solar system is 8",
      i: "images/image-1.jpg",
      a: true);

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: myAnswer,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(questionGroup[questionNumber].questionImage),
              const SizedBox(
                height: 20,
              ),
              Text(
                questionGroup[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            onPressed: () {
              checkUserAnswer(true);
            },
            child: const Text(
              'True',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            onPressed: () {
              checkUserAnswer(false);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
            ),
            child: const Text(
              'False',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ))
      ],
    );
  }
}
