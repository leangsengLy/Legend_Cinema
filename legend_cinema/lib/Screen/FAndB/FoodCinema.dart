import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:legend_cinema/Component/FAndB/cardLegendFood.dart';
import 'package:legend_cinema/Data/Cinema/Cinema.dart';
import 'package:legend_cinema/Screen/FAndB/order_product.dart';

class FoodCinema extends StatelessWidget {
  const FoodCinema({super.key});
  void onClickCinemaFood(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OrderProduct(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = const Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                alignment: Alignment.centerLeft,
                height: 80,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 165, 11, 0),
                      Color.fromARGB(255, 0, 0, 0)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: const Text(
                  "F&B",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 220,
                child: Image.asset(
                  "assets/Image/advertise/2.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/Image/advertise/2.jpeg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        ...listCinema.map(
                          (val) {
                            return GestureDetector(
                              onTap: () {
                                onClickCinemaFood(context);
                              },
                              child: CardLegendFood(
                                title: val.name,
                                url: val.urlImage,
                                onClickCinemaFood: onClickCinemaFood,
                              ),
                            );
                          },
                        ).toList(),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
