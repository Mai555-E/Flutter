import 'package:flutter/material.dart';

import 'page_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const List<Widget> pageContent = [];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: PageBody(
              subtitle: "Welcome to our academy",
              title: "SIGN UP",
              endText: "Already a member?",
              signState: "Sign in",
              user: true,
            ),
          ),
        ),
      )),
    );
  }
}

