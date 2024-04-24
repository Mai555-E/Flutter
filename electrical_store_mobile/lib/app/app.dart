import 'package:electrical_store_mobile/ui/constants.dart';
import 'package:electrical_store_mobile/ui/provider/mode_provider.dart';
import 'package:electrical_store_mobile/ui/widgets/details/data_theme_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../ui/Screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Store app",
      theme: ThemeDataStyle.light,
      themeMode: ThemeDataStyle.currentMode,
      darkTheme: ThemeDataStyle.dark,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
