import 'package:electrical_store_mobile/ui/constants.dart';
import 'package:electrical_store_mobile/ui/provider/mode_provider.dart';
import 'package:electrical_store_mobile/ui/widgets/details/data_theme_style.dart';
import 'package:electrical_store_mobile/ui/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static IconData change = Icons.light_mode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 2,
      title: const Text(
        "مرحبا بكم في متجرنا",
        style: TextStyle(color: kBackgroundColor),
      ),
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: kBackgroundColor,
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
