import 'package:flutter/material.dart';
import 'package:flutter_batakati_pro2/UI/cards.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(248, 141, 140, 137),
      body: SafeArea(

          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 100.0,
              backgroundColor: Color.fromARGB(250, 237, 230, 230),
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1561389881-a5d8d5549588?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80')),
          SizedBox(width: 200.0, height: 20.0, child: Divider(color: Colors.white)),

          Text(
            'cute cat',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(249, 248, 248, 251),
            ),
          ),

          Text(
            'It is the cutest cate ,I have ever seen',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(244, 242, 240, 240),
            ),
          ),

          Cards(),
        ],
      )),
    );
  }
}
