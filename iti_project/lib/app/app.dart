import 'package:flutter/material.dart';
import 'package:iti_project/ui/authentification/profile/update_profile.dart';
import 'package:iti_project/ui/main_view.dart';
import '../ui/aboutUs/about_us.dart';
import '../ui/aboutUs/developer.dart';
import '../ui/authentification/login.dart';
import '../ui/home/home/home_page.dart';
import '../ui/home/splash_screen.dart';
import '../ui/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), debugShowCheckedModeBanner: false, home: const SplashScreen());
    

  }
}


