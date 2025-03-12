import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:legend_cinema/Component/ItemTab.dart';
import 'package:legend_cinema/Component/scheduleShow/ScheduleShow.dart';

class Mainlegend extends StatefulWidget {
  const Mainlegend({super.key});
  @override
  State<Mainlegend> createState() {
    return MainlegendState();
  }
}

class MainlegendState extends State<Mainlegend> {
  double martrixX = 0;
  double matrixTab = 0;
  void onClickTextNowShowing(bool isClickShowing) {
    setState(() {
      martrixX = isClickShowing ? 0 : 180;
    });
  }

  var _selectedIndex = 0;
  void onSelectNavigationBar(index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  void onClickTabItem(String label) {
    print(label);
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
    });
  }

  void onTabAllCinema() {
    print("Hello click cinemar all");
    showModalBottomSheet(
        context: context,
        backgroundColor: const Color.fromARGB(166, 37, 37, 37),
        builder: (BuildContext context) {
          return Container(
            height: 500,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(15),
                right: Radius.circular(15),
              ),
            ),
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cinema",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                      Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
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
                                filter:
                                    ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                                child: Container(
                                  color: Colors.black.withOpacity(
                                      0.1), // Adjust opacity as needed
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                margin:
                                    const EdgeInsets.fromLTRB(20, 30, 20, 20),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                    InkWell(
                                      onTap: () {
                                        onTabAllCinema();
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 45,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              83, 255, 255, 255),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                        height: 64,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(61, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 240),
                              transform:
                                  Matrix4.translationValues(martrixX, 0, 0),
                              width: 180,
                              height: double.infinity,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 43,
                              child: InkWell(
                                onTap: () {
                                  onClickTextNowShowing(true);
                                },
                                child: const Text(
                                  "Now Showing",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 49,
                              child: InkWell(
                                onTap: () {
                                  onClickTextNowShowing(false);
                                },
                                child: const Text(
                                  "Coming Soon",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Scheduleshow(day: 10, mon: "JAN", week: "Mon"),
                              Scheduleshow(day: 11, mon: "JAN", week: "Thu"),
                              Scheduleshow(day: 12, mon: "JAN", week: "Fri"),
                              Scheduleshow(day: 13, mon: "JAN", week: "Sun"),
                              Scheduleshow(day: 14, mon: "JAN", week: "Mun"),
                              Scheduleshow(day: 15, mon: "JAN", week: "Web"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: const Row(
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              "All Showing",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 10,
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
