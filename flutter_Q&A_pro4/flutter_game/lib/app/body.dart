import 'package:flutter/material.dart';

import '../UI/images.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo,
            appBar: AppBar(title: const Text('Choose the photo'), backgroundColor: Colors.indigo[800]),
            body: const Images()));
  }
}
