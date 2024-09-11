import 'package:flutter/material.dart';
import 'package:iti_project/ui/authentification/profile/profile.dart';

class ChangeIcons extends StatelessWidget {
  const ChangeIcons({
    super.key,
    required this.size,
    required this.changeIcon,
    required this.changeCOlor,
  });

  final Size size;
  final IconData changeIcon;
  final Color changeCOlor;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: () {},
      icon: Icon(
        changeIcon,
        color: changeCOlor,
        size: 45,
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String email;
  final String ?hint;
  final IconData? changeIcon;
  const CustomTextFormField({super.key, required this.email, this.changeIcon, required int rounded,  this.hint});

  bool isPassword() => (email == "Password");

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword(),
      decoration: InputDecoration(
          label: Text(email),
          hintText: "$hint",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          fillColor: Colors.blueAccent,
          suffixIcon: Icon(
            isPassword() ? Icons.visibility_off_rounded : changeIcon,
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return "$email must not be empty";
        }
      },
    );
  }
}

class RepeatedText extends StatelessWidget {
  const RepeatedText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            subTitle,
            style: const TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key, required this.buttonHeight, required this.buttonText});
  final double buttonHeight;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (_) => Profile()));
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), backgroundColor: Colors.brown[800]),
          child: Text(buttonText, style: const TextStyle(fontSize: 20, color: Colors.white))),
    );
  }
}
