import 'package:fire_base_sign_in/UI/signup_screen.dart';
import 'package:flutter/material.dart';

import '../UI/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan[700]),
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
