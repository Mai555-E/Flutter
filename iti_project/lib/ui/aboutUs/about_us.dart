import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 4,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Welcome to Clothes App",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: const Text(
                  textScaler: TextScaler.linear(1.2),
                  "At clothes app, we believe fashion is a form of self-expression. Our mission is to bring you the ultimate collection of high-quality, stylish clothing that fits your lifestyle and budget. We carefully curate each piece to ensure it meets our standards of craftsmanship and design."
                  "Our team is passionate about fashion and committed to providing you with a seamless shopping experience. From the latest trends to timeless classics, we strive to deliver exceptional value and service."
                  "Thank you for choosing clothes app. We’re excited to be part of your fashion journey!",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
