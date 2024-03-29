import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen '),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: <Widget>[
            Text("Second Screen ", style: Theme.of(context).textTheme.headlineMedium),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Previous page"))
          ]),
        ));
  }
}
