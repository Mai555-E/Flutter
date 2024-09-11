import 'package:flutter/material.dart';
import 'package:iti_project/ui/aboutUs/about_us.dart';
import 'package:iti_project/ui/aboutUs/developer.dart';
import 'package:iti_project/ui/authentification/profile/profile.dart';
import 'home/home/home_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  static final List<Widget> _pages = [const HomePage(), const HomePage(), const AboutUs(), Development(), Profile()];

  static final List<({IconData icon, IconData iconFilled})> _items = [
    (icon: Icons.home_outlined, iconFilled: Icons.home_filled),
    (icon: Icons.shopping_bag_outlined, iconFilled: Icons.shopping_bag_rounded),
    (icon: Icons.privacy_tip, iconFilled: Icons.privacy_tip_rounded),
    (icon: Icons.chat_bubble_outline_rounded, iconFilled: Icons.chat_bubble_rounded),
    (icon: Icons.person_pin, iconFilled: Icons.person_pin)
  ];

  bool isSelected(int index) => currentIndex == index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      floatingActionButton: _buildNavigationBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildNavigationBottomBar() {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          _items.length,
          (index) => IconButton.filled(
            onPressed: () => setState(() => currentIndex = index),
            icon: Icon(isSelected(index) ? _items[index].iconFilled : _items[index].icon),
            style: IconButton.styleFrom(
              iconSize: 20,
              side: BorderSide.none,
              fixedSize: const Size.square(45),
              backgroundColor: isSelected(index) ? Colors.white : Colors.transparent,
              foregroundColor: isSelected(index) ? const Color(0xFF704F38) : Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}