import '../resources/app_localization.dart';

import '../resources/constants.dart';
import 'details_body.dart';
import 'home_body.dart';
import '../home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
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
      title: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Text(
          "Back".tran(context),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
