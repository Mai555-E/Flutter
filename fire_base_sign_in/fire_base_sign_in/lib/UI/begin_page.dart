import 'package:flutter/material.dart';

class BeginPage extends StatelessWidget {
  const BeginPage({super.key});
  static const Routes = '/page';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("congratulation , you submit successfully", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.cyan.shade200,
          ),)]),
      ),
    );
  }
}
