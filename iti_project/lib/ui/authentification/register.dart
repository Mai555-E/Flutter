import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../domain/api/api_provider.dart';
import 'login.dart';
import '../home_screen.dart';

import 'custom_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height / 9),
                        const RepeatedText(title: "Register", subTitle: "Fill your information below of register with your social account"),
                        const SizedBox(height: 30),
                        TextFormField(
                            controller: emailController,
                            obscureText: false,
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                                fillColor: Colors.blueAccent,
                                suffixIcon: const Icon(Icons.email_sharp)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email must not be empty";
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            }),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              label: const Text("Password"),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                              fillColor: Colors.blueAccent,
                              suffixIcon: const Icon(Icons.visibility_off_rounded)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password must not be empty";
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 7),
                        SizedBox(
                          height: size.width / 18,
                        ),
                        SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  await ApiProvider()
                                      .userLogin(userName: emailController.text, userPassword: passwordController.text)
                                      .then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
                                  });

                                  await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

                                  Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.brown[800]),
                              child: const Text("Register", style: TextStyle(fontSize: 20, color: Colors.white))),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(" Do you have an account?", style: TextStyle(fontSize: 20)),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
                              },
                              style: ElevatedButton.styleFrom(elevation: 0),
                              child: const Text("sign In", style: TextStyle(fontSize: 17, color: Colors.blue)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
