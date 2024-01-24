import 'package:flutter/material.dart';

import '../UI/exam_screen.dart';

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Info', style: TextStyle(color: Colors.black87)), backgroundColor: Colors.blueGrey),
            body: const Padding(padding: EdgeInsets.all(15.0), child: ExamScreen())));
  }
}

