import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:legend_cinema/Component/cinema/CardCinema.dart';
import 'package:legend_cinema/Component/scheduleShow/ScheduleShow.dart';
import 'package:legend_cinema/Screen/cinema/SearchCinema.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() {
    return HomescreenStore();
  }
}

class HomescreenStore extends State<Homescreen> {
  var selectFilterCinema = "All Cinema";
  double martrixX = 0;

  void onClickTextNowShowing(bool isClickShowing) {
    setState(() {
      martrixX = isClickShowing ? 0 : 180;
    });
  }

  void onClickCinema(String label) {
    Navigator.of(context).pop();
    setState(() {
      selectFilterCinema = label;
      print(label);
    });
  }

  void onTabAllCinema() {
    showModalBottomSheet(
        context: context,
        backgroundColor: const Color.fromARGB(186, 0, 0, 0),
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Row(
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
                  ),
                  const SizedBox(height: 20),
                  Cardcinema(
                    label: "All Cinema",
                    isActive: "All Cinema" == selectFilterCinema,
                    onClickCinema: (String label) {
                      onClickCinema(label);
                    },
                  ),
                  Cardcinema(
                      label: "Legend Midtown Mall",
                      isActive: "Legend Midtown Mall" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend Meanchey",
                      isActive: "Legend Meanchey" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend K Mall",
                      isActive: "Legend K Mall" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend Sek Sok",
                      isActive: "Legend Sek Sok" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend Toul Tork",
                      isActive: "Legend Toul Tork" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend Kompong Cham",
                      isActive: "Legend Kompong Cham" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                  Cardcinema(
                      label: "Legend Peassi haknu",
                      isActive: "Legend Peassi haknu" == selectFilterCinema,
                      onClickCinema: (String label) {
                        onClickCinema(label);
                      }),
                ],
              ),
            ),
          );
        });
  }

  void onClickSearchCinema() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SearchCinema(),
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
    return SingleChildScrollView(
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
                          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                          child: Container(
                            color: Colors.black
                                .withOpacity(0.1), // Adjust opacity as needed
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 60, 20, 20),
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
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          onClickSearchCinema();
                                        },
                                        child: const Icon(
                                          Icons.search,
                                          size: 27,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      const Icon(
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
                                    color:
                                        const Color.fromARGB(83, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        selectFilterCinema,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Icon(
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
                                height: 500,
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
                        transform: Matrix4.translationValues(martrixX, 0, 0),
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
                        top: 23,
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
                        top: 23,
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
    );
  }
}
