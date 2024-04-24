import 'package:electrical_store_mobile/ui/Screens/details_screen.dart';
import 'package:electrical_store_mobile/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Model/product.dart';
import 'product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      Expanded(
        child: Stack(children: [
          Container(
              margin: const EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(
                  color: kBackgroundColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)))),
          const Padding(padding: EdgeInsets.only(top: kDefaultPadding / 2)),
          ListView.builder(
            itemBuilder: (context, index) => ProductCard(
              products: products[index],
              itemIdex: index,
              press: () {
                Get.to(()=> DetailsScreen(product: products[index]));
              },
            ),
            itemCount: products.length,
          )
        ]),
      ),
    ]));
  }
}
