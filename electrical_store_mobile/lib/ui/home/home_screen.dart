import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/constants.dart';
import '../resources/app_localization.dart';
import '../resources/data_theme_style.dart';
import '../details/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static IconData change = Icons.light_mode;

  // MyLocalController controllerLang = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: Text("Hi".tran(context)),
      centerTitle: true,
      actions: [
        ElevatedButton(
            onPressed: () => AppLocalization(locale: Get.locale ?? const Locale("en")).changeLang(),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: Colors.white30, elevation: 0, alignment: Alignment.center),
            child: const Icon(
              Icons.circle_notifications_outlined,
              size: 30,
              color: Colors.white,
              textDirection: TextDirection.ltr,
            )),
      ],
      leading: IconButton(
        onPressed: () {
          Get.changeThemeMode(ThemeDataStyle.changeCurrentMode());
          setState(() {
            if (ThemeDataStyle.currentMode == ThemeMode.light) {
              change = Icons.light_mode;
            } else {
              change = Icons.dark_mode;
            }
          });
        },
        icon: Icon(
          change,
          color: change == Icons.dark_mode ? Colors.black : kSecondaryColor,
        ),
        alignment: Alignment.topLeft,
      ),
    );
  }
}
