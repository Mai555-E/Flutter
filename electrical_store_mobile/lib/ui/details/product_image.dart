import 'package:flutter/material.dart';

import '../resources/constants.dart';

class ProductImage extends StatelessWidget {
  ProductImage({
    super.key,
    required this.size, required this.image
  });

  final Size size;
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              width: size.width * 0.75,
              height: size.width * 0.75,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
