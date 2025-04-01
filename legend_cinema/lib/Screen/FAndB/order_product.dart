import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/FAndB/card_product.dart';
import 'dart:ui';

import 'package:legend_cinema/Model/food/food.dart';

class OrderProduct extends StatefulWidget {
  const OrderProduct({super.key});
  @override
  State<OrderProduct> createState() {
    return OrderProductState();
  }
}

class OrderProductState extends State<OrderProduct> {
  double summaryTotal = 0;
  void onAddFood(Food food, bool isAdd) {
    // Handle the action when the food is added
    setState(() {
      if (!isAdd) {
        summaryTotal -= food.price;
        if (summaryTotal < 0) {
          summaryTotal = 0;
        }
      } else {
        summaryTotal += food.price;
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
                  height: MediaQuery.of(context).size.height - 20,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      ...Food.foods.map((food) {
                        return CardProduct(
                          food: food,
                          onAddFood: onAddFood,
                        );
                      }).toList(),
                    ],
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          child: const Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Summary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Text(
                                  "\$ $summaryTotal",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 134, 16, 0),
                      ),
                      child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
