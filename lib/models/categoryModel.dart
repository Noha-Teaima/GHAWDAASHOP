class Category {
  String? title;
  String? image;

  Category({required this.title, this.image});
}

// you can change the name of categories from here
List<Category> categories = [
  Category(title: "GROCERY", image: 'lib/images/grocery.png'),
  Category(title: "ELECTRONICES", image: 'lib/images/electronics.png'),
  Category(title: "COSMETICS", image: 'lib/images/cosmatics.png'),
  Category(title: "PHARMACY", image: 'lib/images/pharmacy.png'),
  Category(title: "GARMENTS", image: 'lib/images/garments.png'),
];
