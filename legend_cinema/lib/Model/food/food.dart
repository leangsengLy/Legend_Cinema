class Food {
  const Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });
  final String name;
  final double price;
  final String imagePath;
  final String description;
  static const List<Food> foods = [
    Food(
      name: "Combo1",
      price: 5.00,
      imagePath: "assets/Image/offers/2.jpeg",
      description: "Combo1",
    ),
    Food(
      name: "Combo2",
      price: 10.00,
      imagePath: "assets/Image/offers/3.jpeg",
      description: "Combo2",
    ),
    Food(
      name: "Combo3",
      price: 15.00,
      imagePath: "assets/Image/offers/4.jpeg",
      description: "Combo3",
    ),
  ];
}
