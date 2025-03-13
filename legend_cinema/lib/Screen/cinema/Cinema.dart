import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';

class Cinema extends StatefulWidget {
  const Cinema({super.key});
  @override
  State<Cinema> createState() {
    return SearchCinemaState();
  }
}

class SearchCinemaState extends State<Cinema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 134, 16, 0), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: const Row(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Cinema",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white), //
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),

                  hintText: "Search cinema...",
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        CardLocationCinema(
                          pathImage: "assets/Image/branch/seihanok.jpg",
                        ),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/kmal.jpg"),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/meanchey.jpg"),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/mid.jpg"),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/noro.jpg"),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/oly.jpg"),
                        SizedBox(height: 16),
                        CardLocationCinema(
                            pathImage: "assets/Image/branch/squ.jpg"),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
