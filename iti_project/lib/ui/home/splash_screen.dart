import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iti_project/ui/authentification/login.dart';
import 'package:iti_project/ui/authentification/profile/profile.dart';

import '../authentification/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() => {super.initState(), _startTimer()};

  @override
  void dispose() => {_timer.cancel(), super.dispose()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    width: 160,
                    height: 190,
                    child: Image.asset("assets/images/up.jpg", width: 100
                        //color: Colors.white,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2.33,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset("assets/images/f.jpg", width: 200
                          //color: Colors.white,
                          ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2.6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset("assets/images/line.jpg", width: 100
                            //color: Colors.white,
                            ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateTo() => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LoginScreen()));

  void _startTimer() => _timer = Timer(const Duration(milliseconds: 2200), () => _navigateTo());
}
