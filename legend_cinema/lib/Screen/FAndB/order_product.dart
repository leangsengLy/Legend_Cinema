import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/FAndB/card_product.dart';
import 'package:legend_cinema/Component/FAndB/summary_detail.dart';
import 'dart:ui';
import 'package:http/http.dart' as http;

import 'package:legend_cinema/Model/food/food.dart';

class OrderProduct extends StatefulWidget {
  const OrderProduct({super.key, required this.cinemaId});
  final int cinemaId;
  @override
  State<OrderProduct> createState() {
    return OrderProductState();
  }
}

class OrderProductState extends State<OrderProduct> {
  List<Food> foods = [];

  @override
  void initState() {
    super.initState();
    getListProduct();
  }

  void getListProduct() async {
    final Map<String, dynamic> requestBody = {"id": widget.cinemaId};
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8080/api/food/list"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8', // Set headers
      },
      body: jsonEncode(requestBody),
    );
    print(response.body);
    final List<dynamic> foodList = jsonDecode(response.body);
    setState(() {
      foods = foodList.map((data) => Food.fromJson(data)).toList();
    });
    print(foods);
  }

  void onClickSummaryIcon(
      BuildContext context, List<Food> selectedFood, double summaryTotal) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Booking Details",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 0,
                        height: 1,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 0, 0, 0),
                              Color.fromARGB(255, 255, 255, 255),
                              Color.fromARGB(0, 0, 0, 0),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: selectedFood.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedFood[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$${selectedFood[index].price * selectedFood[index].item}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SummaryDetail(
                  summaryTotal: summaryTotal,
                  selectedFood: selectedFood,
                ),
              ],
            ),
          );
        });
  }

  double summaryTotal = 0;
  List<Food> selectedFood = [];
  void onAddFood(Food food, bool isAdd, int countItem) {
    // Handle the action when the food is added
    setState(() {
      if (!isAdd) {
        summaryTotal -= food.price;
        food.setItem(food.item - 1 > 0 ? food.item - 1 : 0);
        if (countItem == 1) {
          if (selectedFood.contains(food)) {
            selectedFood.remove(food);
          }
        }
        if (summaryTotal <= 0) {
          summaryTotal = 0;
        }
      } else {
        summaryTotal += food.price;
        food.setItem(food.getItem() + 1);
        print(food.getItem());
        if (!selectedFood.contains(food)) {
          selectedFood.add(food);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "F&B",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Th
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 134, 16, 0), // Starting color
                Colors.black, // Ending color
              ],
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25, // Adjust icon size to fit within the Container
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        "assets/Image/offers/1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height - 20,
                  height: 600,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: foods.isNotEmpty
                      ? Column(
                          children: [
                            ...foods.map((food) {
                              return CardProduct(
                                food: food,
                                onAddFood:
                                    (Food food, bool isAdd, int countItem) {
                                  onAddFood(food, isAdd, countItem);
                                },
                              );
                            }).toList(),
                          ],
                        )
                      : const Center(
                          child: Text("Please create food in your cinema!"),
                        ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: SummaryDetail(
                summaryTotal: summaryTotal,
                selectedFood: selectedFood,
                onClickSummaryIcon: onClickSummaryIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
