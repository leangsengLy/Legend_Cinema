import 'package:flutter/material.dart';

class SearchCinema extends StatefulWidget {
  const SearchCinema({super.key});
  @override
  State<SearchCinema> createState() {
    return SearchCinemaState();
  }
}

class SearchCinemaState extends State<SearchCinema> {
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
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(106, 216, 216, 216),
                          ),
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Search",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white), //
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),

                  hintText: "Search movies...",
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.theaters_outlined,
                        color: Colors.white,
                        size: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\"Search Movies\"",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
