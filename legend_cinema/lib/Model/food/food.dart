import 'dart:ffi';

class Food {
  Food({
    required this.name,
    required this.price,
    required this.item,
    required this.imagePath,
    required this.description,
  });
  final String name;
  final double price;
  final String imagePath;
  int item;
  final String description;
  void setItem(int selectItem) {
    item = selectItem;
  }

  int getItem() {
    return item;
  }

  factory Food.fromJson(Map<String, dynamic> json) {
    print(json);
    return Food(
        name: json['englishName'],
        price: json['price'],
        item: json['qty'],
        imagePath: json['imagePath'],
        description: json['englishName']);
  }

  static List<Food> foods = [
    Food(
      name: "Combo1",
      price: 5.00,
      item: 0,
      imagePath: "assets/Image/offers/2.jpeg",
      description: "Combo1",
    ),
    Food(
      name: "Combo2",
      price: 10.00,
      item: 0,
      imagePath: "assets/Image/offers/3.jpeg",
      description: "Combo2",
    ),
    Food(
      name: "Combo3",
      price: 15.00,
      item: 0,
      imagePath: "assets/Image/offers/4.jpeg",
      description: "Combo3",
    ),
  ];
}
