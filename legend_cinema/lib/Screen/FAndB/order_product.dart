import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:legend_cinema/Component/FAndB/card_product.dart';

class OrderProduct extends StatefulWidget {
  const OrderProduct({super.key});
  @override
  State<OrderProduct> createState() {
    return OrderProductState();
  }
}

class OrderProductState extends State<OrderProduct> {
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
      body: SingleChildScrollView(
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
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width - 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Legend Sensok"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: Container(
                      color: Colors.black
                          .withOpacity(0.1), // Adjust opacity as needed
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: const Column(
                children: [
                  SizedBox(height: 20),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                  SizedBox(height: 16),
                  CardProduct(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
