import 'package:flutter/material.dart';
import 'package:fly_routes/pages/home.dart';
import 'package:fly_routes/pages/page1.dart';
import 'package:fly_routes/pages/page2.dart';

void main() => (App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
      Home.route:(context) => Home(),
        Page1.route:(context) => Page1(),
       Page2.route:(context) => Page2()
      },
    );
  }
}