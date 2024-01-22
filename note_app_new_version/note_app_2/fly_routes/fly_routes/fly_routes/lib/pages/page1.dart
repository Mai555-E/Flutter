import 'package:flutter/material.dart';
import 'package:fly_routes/student.dart';

class Page1 extends StatelessWidget {
 Page1({super.key});
  static final route = "/page1";
 
  @override
   Student student = ModalRoute.of(context).settings.arguments;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Page 1')),
      body:  Center(
        child: Column(children: <Widget>[Text("Name ${student.name} "), Text("Age ${student.age}")]),
      ),
    );
  }
}

