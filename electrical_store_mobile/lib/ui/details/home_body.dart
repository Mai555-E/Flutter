import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product.dart';
import 'details_screen.dart';
import '../resources/constants.dart';
import '../home/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(children: [
      Expanded(
        child: Stack(children: [
          Container(
              margin: const EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)))),
          const Padding(padding: EdgeInsets.only(top: kDefaultPadding / 2)),
          ListView.builder(
              itemBuilder: (context, index) => ProductCard(
                  products: products[index],
                  itemIdex: index,
                  press: () {
                    Get.to(() => DetailsScreen(product: products[index]));
                  }),
              itemCount: products.length)
        ]),
      ),
    ]));
  }
}
