import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
static final route = "/page2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Page 2')),
      body: const Center(
        child: Column(children: <Widget>[Text("Name "), Text("Age")]),
      ),
    );
  }
}
