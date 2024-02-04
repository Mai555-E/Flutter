import 'package:flutter/material.dart';

import 'page_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const Routes = '/sign in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: PageBody(
            subtitle: "Welcome back ,nice to see you again",
            title: "SIGN IN",
            endText: "Not yet a member?",
            signState: "Sign up",
            user: false,
            Route: '/sign in',
          ),
        ),
      )),
    );
  }
}
