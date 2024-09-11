import 'package:flutter/material.dart';

class Development extends StatelessWidget {
  const Development({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " This app is developed by : Mai Emad",
              textScaler: TextScaler.linear(1.5),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
