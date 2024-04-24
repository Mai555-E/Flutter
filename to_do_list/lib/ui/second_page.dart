import 'package:flutter/material.dart';

import '../data/task.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(children: [
            Text("Task Details", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),
          ])),
    );
  }
}
