import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';
import 'package:legend_cinema/Data/Cinema/Cinema.dart';
import 'package:legend_cinema/appLocalizations.dart';

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
    final localizations = AppLocalizations.of(context)!;
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
                    Text(
                      textAlign: TextAlign.center,
                      localizations.translate('Cinema'),
                      style: const TextStyle(
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
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ...listCinema.map(
                          (val) {
                            return CardLocationCinema(
                              location: val.location,
                              name: val.name,
                              pathImage: val.urlImage,
                            );
                          },
                        ).toList(),
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
