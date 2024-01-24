import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final String questionImage;
 final bool questionAnswer;

  Question({required this.questionText, required this.questionImage, required this.questionAnswer});

  static List<Padding> myAnswer = [];
  static int questionNumber = 0;
 static List<Question> questionGroup = [
    Question(questionText: "Number of planets in our solar system is 8", questionImage: "images/image-1.jpg", questionAnswer: true),
    Question(questionText: "does cat eat vegetables", questionImage: "images/image-2.jpg", questionAnswer: true),
    Question(questionText: "china exist in  africa", questionImage: "images/image-3.jpg", questionAnswer: false),
    Question(questionText: "Earth is flat", questionImage: "images/image-4.jpg", questionAnswer: true)
  ];

 static void checkUserAnswer(bool whatUserPicked) {
    bool correctAnswer = questionGroup[questionNumber].questionAnswer;
    if (whatUserPicked == correctAnswer) {
      myAnswer.add(const Padding(padding: EdgeInsets.all(3.0), child: Icon(Icons.thumb_up, color: Colors.green)));
    } else {
      myAnswer.add(const Padding(padding: EdgeInsets.all(3.0), child: Icon(Icons.thumb_down, color: Colors.red)));
    }
    if (questionGroup.length - 1 > questionNumber) questionNumber++;
  }
}
