import 'package:flutter/material.dart';
import 'package:iti_project/ui/authentification/profile/update_profile.dart';

class RepeatedIconsProfileScreen extends StatelessWidget {
  const RepeatedIconsProfileScreen({
    super.key,
    required this.title,
    required this.image,
    required this.width,
    // required this.width, required this.icon,
  });
  final double width;
  final String title;
  final String image;
  //final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => UpdateProfile()));
      },
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(width: 23, height: 23, child: Image.asset(image)),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(fontSize: 18)),
              SizedBox(width: MediaQuery.of(context).size.width / width),
              const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff704f38))
            ],
          ),
          Divider(color: Colors.grey[350])
        ],
      ),
    );
  }
}
