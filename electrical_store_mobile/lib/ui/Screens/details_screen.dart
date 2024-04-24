import 'package:electrical_store_mobile/ui/constants.dart';
import 'package:electrical_store_mobile/ui/widgets/details/details_body.dart';
import 'package:electrical_store_mobile/ui/widgets/home/home_body.dart';
import 'package:electrical_store_mobile/ui/widgets/home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
 final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
      ),
      
      title:  Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Text("رجوع",style: Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}
