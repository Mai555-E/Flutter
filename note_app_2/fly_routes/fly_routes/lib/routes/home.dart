import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: <Widget>[
            Text("Home Screen", style: Theme.of(context).textTheme.headlineMedium),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: const Icon(Icons.open_with)),
            ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text("Next Page"))
          ]),
        ));
  }
}
