import '../resources/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product.dart';
import '../resources/constants.dart';
import '../resources/data_theme_style.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.products, required this.itemIdex, required this.press});
  int itemIdex;
  final Product products;
  Function()? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        height: 190,
        child: InkWell(
          onTap: press,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 166,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color:Theme.of(context).primaryColor,
                    boxShadow: const [BoxShadow(blurRadius: 25, offset: Offset(0, 15), color: Colors.black26)]),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: SizedBox(
                      height: 170,
                      width: 160,
                      child: Image.asset(
                        products.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                      height: 136,
                      width: size.width - 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              
                              products.title.tran(context),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text(
                              products.subTitle.tran(context),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 5),
                              decoration: BoxDecoration(color: kSecondaryColor, borderRadius: BorderRadius.circular(22)),
                              child: Text("${"Price".tran(context)}:\$${products.price}"))
                        ],
                      ))),
            ],
          ),
        ));
  }
}
