import 'package:flutter/material.dart';
import 'question.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  Question question1 = Question(questionText: "Number of planets in our solar system is 8", questionImage: "images/image-1.jpg", questionAnswer: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children:Question.myAnswer),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(Question.questionGroup[Question.questionNumber].questionImage),
              const SizedBox(height: 20),
              Text(Question.questionGroup[Question.questionNumber].questionText,
                  textAlign: TextAlign.center, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black54))
            ],
          ),
        ),
        for (var i = 0; i < 2; ++i)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                  onPressed: () => setState(() =>Question.checkUserAnswer(i == 0)),
                  style: ElevatedButton.styleFrom(backgroundColor: i == 0 ? null : Colors.deepOrange),
                  child: Text(i == 0 ? 'True' : 'False', style: const TextStyle(fontSize: 24.0, color: Colors.white))),
            ),
          ),
      ],
    );
  }
}
