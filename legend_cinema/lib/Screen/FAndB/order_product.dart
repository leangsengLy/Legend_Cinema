import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/FAndB/card_product.dart';
import 'dart:ui';

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
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
