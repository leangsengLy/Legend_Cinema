import 'package:flutter/material.dart';
import 'dart:ui';

class Mainlegend extends StatelessWidget {
  const Mainlegend({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 700,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Image/Movie/1.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
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
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/logor/legend-cinema-logo.png",
                                width: 80,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 27,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.notifications,
                                    size: 27,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 45,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(83, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All Cinemas",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 520,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/Image/Movie/1.jpg',
                              fit: BoxFit.fitWidth,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: const Color.fromARGB(61, 255, 255, 255),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 180,
                    height: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    left: 43,
                    child: Text(
                      "Now Showing",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    right: 49,
                    child: Text(
                      "Coming Soon",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
