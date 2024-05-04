import '../resources/app_localization.dart';

import '../../model/product.dart';
import '../resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Color_dot.dart';
import 'product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorsDot(
                      fillText: kTextLightColor,
                      isSlected: true,
                    ),
                    ColorsDot(
                      fillText: Colors.blue,
                      isSlected: false,
                    ),
                    ColorsDot(
                      fillText: Colors.red,
                      isSlected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title.tran(context),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Text(
                "\$${product.price}:${"Price".tran(context)}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: kSecondaryColor),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 3),
                child: Text(
                  product.description.tran(context),
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
