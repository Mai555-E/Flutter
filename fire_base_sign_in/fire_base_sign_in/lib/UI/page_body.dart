import 'package:fire_base_sign_in/UI/login_screen.dart';
import 'package:fire_base_sign_in/UI/signup_screen.dart';
import 'package:flutter/material.dart';

class PageBody extends StatelessWidget {
  const PageBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.endText,
    required this.signState,
    required this.user,
    required this.Route,
  });

  final String title, subtitle, endText, signState;
  final bool user;
  final Route;
  static final pageKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: pageKey,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("images/2.png", height: 150, width: 200),
        const SizedBox(height: 35),
        Text(title, style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
        Text(subtitle, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 35),
        Visibility(visible: title == "SIGN UP", child: const CustomTextField(hintText: 'Username')),
        const SizedBox(height: 10),
        const CustomTextField(hintText: 'Email'),
        const SizedBox(height: 10),
        const CustomTextField(hintText: "Password"),
        const SizedBox(height: 15),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(255, 143, 0, 1),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onPressed: () {
            if (pageKey.currentState!.validate()) {}
          },
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Text(endText, style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextButton(
              child: Text(signState, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => title == "SIGN UP" ? const LoginScreen() : const SignUpScreen()));
              },
            )
          ],
        )
      ]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.obscureText = false});
  final bool obscureText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(13))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          obscureText: hintText == "Password" ? true : false,
          decoration: InputDecoration(border: InputBorder.none, hintText: hintText),
          validator: (value) => value!.isEmpty ? "$hintText required" : null,
        ),
      ),
    );
  }
}
