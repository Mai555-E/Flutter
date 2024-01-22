import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  final IconData icon;
  final List<Widget> widgets;
  const CustomBody({super.key, required this.icon, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const Text('Notes', style: TextStyle(fontSize: 28)),
              const Spacer(),
              Container(
                  width: 45,
                  height: 45,
                  decoration:
                      const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), color: Color.fromRGBO(255, 255, 255, .2)),
                  child: Center(child: Icon(icon, size: 28)))
            ],
          ),
          const SizedBox(height: 20),
          ...widgets
        ],
      ),
    );
  }
}
