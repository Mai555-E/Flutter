import 'package:flutter/material.dart';
import 'package:fly_routes/routes/home.dart';

import 'second_screen.dart';

Map<String, WidgetBuilder> route ={"/second": (context) => const SecondScreen(),
'/': (context) => const Home()};