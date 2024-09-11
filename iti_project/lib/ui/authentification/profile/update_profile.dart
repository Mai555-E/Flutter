import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../custom_widgets.dart';
import 'profile.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  var currentValue = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Profile())),
          icon: const Icon(Icons.arrow_back),
          style: IconButton.styleFrom(shape: const CircleBorder(side: BorderSide(color: Colors.black38))),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const RepeatedText(
                    title: "Your Profile",
                    subTitle: "Don't worry, only you can see your personal data.No one else will be able to see it "),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.grey[300],
                      child: Image.asset(
                        "assets/images/Hj.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff704f38),
                          ),
                          child: const Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                            size: 20,
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(email: "UserName", rounded: 35, hint: "Mai Emad "),
                const SizedBox(height: 20),
                const IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: '0122254897',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: Text(
                      'Phone Number',
                      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30))),
                  ),
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                        hintText: "Select",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                        label: const Text(
                          "Gender",
                          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                        )),
                    value: currentValue,
                    items: const [
                      DropdownMenuItem(value: "-1", child: Text("Select")),
                      DropdownMenuItem(value: "1", child: Text("Male")),
                      DropdownMenuItem(value: "0", child: Text("Female")),
                    ],
                    onChanged: (value) {
                      setState(() {
                        currentValue = value!;
                      });
                    }),
                const SizedBox(height: 20),
                const ButtonScreen(buttonHeight: 60, buttonText: "Complete Profile")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
