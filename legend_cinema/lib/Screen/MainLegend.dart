import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:legend_cinema/Component/ItemTab.dart';
import 'package:legend_cinema/Screen/FAndB/FoodCinema.dart';
import 'package:legend_cinema/Screen/Home/HomeScreen.dart';
import 'package:legend_cinema/Screen/cinema/Cinema.dart';
import 'package:legend_cinema/Screen/more/More.dart';
import 'package:legend_cinema/Screen/offers/Offers.dart';

class Mainlegend extends StatefulWidget {
  const Mainlegend({super.key});
  @override
  State<Mainlegend> createState() {
    return MainlegendState();
  }
}

class MainlegendState extends State<Mainlegend> {
  double matrixTab = 0;
  var _selectedIndex = 0;
  var typeMenu = "Home";
  void onSelectNavigationBar(index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget? content = const Cinema();

  void onClickTabItem(String label) {
    print(label);
    setState(() {
      typeMenu = label;
    });
    setState(() {
      if (label == "Cinema") {
        matrixTab = 165;
      } else if (label == "Offers") {
        matrixTab = 80;
      } else if (label == "Home") {
        matrixTab = 0;
      } else if (label == "More") {
        matrixTab = 313;
      } else if (label == "F&B") {
        matrixTab = 243;
      }
      //code below using for make slide from left ,top,right,bottom
      // Navigator.push(
      //   context,
      //   PageRouteBuilder(
      //     pageBuilder: (context, animation, secondaryAnimation) => content!,
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       var begin = const Offset(1.0, 0.0);
      //       var end = Offset.zero;
      //       var curve = Curves.ease;
      //       var tween =
      //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      //       return SlideTransition(
      //         position: animation.drive(tween),
      //         child: child,
      //       );
      //     },
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (typeMenu == "Home") {
      content = const Homescreen();
    } else if (typeMenu == "Offers") {
      content = const Offers();
    } else if (typeMenu == "F&B") {
      content = const FoodCinema();
    } else if (typeMenu == "Cinema") {
      content = const Cinema();
    } else if (typeMenu == "More") {
      content = const More();
    }
    return Scaffold(
      body: Stack(
        children: [
          content!,
          Positioned(
            left: 0,
            bottom: 0,
            child: Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(237, 19, 19, 19),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 7,
                        left: 17,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 240),
                          transform: Matrix4.translationValues(matrixTab, 0, 0),
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 105, 28, 0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 9,
                        left: 33,
                        child: Row(
                          children: [
                            Itemtab(
                              label: "Home",
                              icon: Icons.home,
                              onClickTabItem: onClickTabItem,
                            ),
                            const SizedBox(width: 40),
                            Itemtab(
                              label: "Offers",
                              icon: Icons.local_offer,
                              onClickTabItem: onClickTabItem,
                            ),
                            const SizedBox(width: 40),
                            Itemtab(
                              label: "Cinema",
                              icon: Icons.place,
                              onClickTabItem: onClickTabItem,
                            ),
                            const SizedBox(width: 40),
                            Itemtab(
                                label: "F&B",
                                icon: Icons.fastfood,
                                onClickTabItem: onClickTabItem),
                            const SizedBox(width: 40),
                            Itemtab(
                              label: "More",
                              icon: Icons.grid_view,
                              onClickTabItem: onClickTabItem,
                            ),
                            const SizedBox(width: 40),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
