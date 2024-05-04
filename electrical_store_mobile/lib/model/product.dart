import 'dart:math';

class Product {
  int id, price;
  String title, subTitle, image, description;

  Product(
      {required this.description, required this.title, required this.subTitle, required this.price, required this.image, required this.id});
}

const List<String> images = ["airpod", "mobile", "class", "headset", "speaker", "camera"];
List<Product> products = [
  for (int i = 1; i <= images.length; ++i)
    Product(
      id: i,
      price: Random().nextInt(750)+250,
      title: "title$i",
      subTitle: "subTitle$i",
      image: "assets/images/${images[i-1]}.png",
      description: "description$i",
    ),
];
