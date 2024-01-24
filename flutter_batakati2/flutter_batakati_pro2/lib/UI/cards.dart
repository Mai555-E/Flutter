import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        
        Card(
            margin: const EdgeInsets.all(15.0),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.cyan[700]),
              title: const Text(
                '+20 102 579 436',
                style: TextStyle(color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            )),

        Card(
          margin: const EdgeInsets.all(15.0),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.cyan[700],
            ),
            title: const Text(
              'mai123@gmail.com',
              style: TextStyle(color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ));
  }
}
