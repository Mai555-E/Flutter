import 'package:flutter/material.dart';
import 'package:fly_routes/pages/page1.dart';
import 'package:fly_routes/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static final route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home page')),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Page1.route, arguments: Student(name: "Mai Emad Ibrahim", age: 19));
                },
                child: Text("Go to page1")),
            ElevatedButton(onPressed: () {}, child: Text("Go to page2")),
          ],
        ),
      ),
    );
  }
}
