class AppConstants {
  static const double padding = 20;

  static List<String> locations = [
    'Cairo',
    'Alexandria',
    'Giza',
    'Port Said',
    'Suez',
    'Shubra El Kheima',
    'Luxor',
    'Aswan',
    'Asyut',
    'Qena',
    'Sohag',
    'Minya',
    'Beni Suef',
    'Fayoum',
    'Gharbia',
    'Daqahlia',
    'Kafr El Sheikh',
    'Behaira',
    'Ismailia',
    'Sharqia',
    'Matruh',
    'Red Sea',
    'North Sinai',
    'South Sinai'
  ].map((location) => "$location, Egypt").toList();

  static const CarouselSliderData carouselSliderData = [
    (images: "assets/images/g.png", title: "New Collection", subTitle: "Discount %50 for the first transaction "),
    (images: "assets/images/g.png", title: "New Arrivals", subTitle: "Discount %40 for the second transaction "),
    (images: "assets/images/g.png", title: "New Arrivals", subTitle: "Discount %50 for the first transaction "),
    (images: "assets/images/g.png", title: "New Collection", subTitle: "50% OFF on Summer Collection!"),
    (images: "assets/images/g.png", title: "Buy One Get One Free", subTitle: "Discount %50 for the first transaction "),
  ];

  static const CategoryIcons categoryIcons = [
    (image: "assets/images/t-shirt.png", name: "T-Shirt"),
    (image: "assets/images/pant.png", name: "Pant"),
    (image: "assets/images/dress.png", name: "Dress"),
    (image: "assets/images/jacket.png", name: "Jacket"),
  ];

  static const List<String> chips = ["All", "Newest", "Popular", "Man", "Woman"];
}

typedef CategoryIcons = List<({String image, String name})>;
typedef CarouselSliderData = List<({String title, String subTitle, String images})>;
