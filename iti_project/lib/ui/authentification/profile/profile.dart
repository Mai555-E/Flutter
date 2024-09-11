import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iti_project/ui/main_view.dart';

import 'repeated_icons_profile_screen.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  int currentIndex = 0;
  List<({String image, String title, double width})> ProfileContent = [
    (image: "assets/images/person2.png", title: "Your Profile", width: 2.1),
    (image: "assets/images/person2.png", title: "Payment Method", width: 2.8),
    (image: "assets/images/person2.png", title: "My Order", width: 1.8),
    (image: "assets/images/person2.png", title: "Setting", width: 1.7),
    (image: "assets/images/person2.png", title: "Help Center", width: 2.1),
    (image: "assets/images/person2.png", title: "Privacy Policy", width: 2.4),
    (image: "assets/images/person2.png", title: "Invites Friends", width: 2.5),
    (image: "assets/images/person2.png", title: "LOg out", width: 1.8),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton.outlined(
            color: Colors.grey,
            onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (_) => MainView())),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[300],
                    child: Image.asset(
                      "assets/images/Hj.png",
                      height: 85,
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff704f38),
                          ),
                          child: const Icon(Icons.edit_sharp, color: Colors.white, size: 20)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Align(alignment: Alignment.bottomCenter, child: Text("Mai Emad", style: TextStyle(fontSize: 20))),
            const SizedBox(height: 15),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const RepeatedIconsProfileScreen(
                    title: 'Your Profile',
                    image: "assets/images/person2.png",
                    width: 2.1,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Payment Method',
                    image: "assets/images/person2.png",
                    width: 2.8,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'My order',
                    image: "assets/images/person2.png",
                    width: 1.8,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Setting',
                    image: "assets/images/person2.png",
                    width: 1.7,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Help Center',
                    image: "assets/images/person2.png",
                    width: 2.1,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Privacy Policy ',
                    image: "assets/images/person2.png",
                    width: 2.4,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Developers ',
                    image: "assets/images/person2.png",
                    width: 2.1,
                  ),
                  separatedFunction(),
                  const RepeatedIconsProfileScreen(
                    title: 'Log out ',
                    image: "assets/images/person2.png",
                    width: 1.8,
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  SizedBox separatedFunction() => const SizedBox(height: 8);
}


