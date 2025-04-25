import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';
import 'package:legend_cinema/Data/Cinema/Cinema.dart';
import 'package:legend_cinema/appLocalizations.dart';
import 'package:http/http.dart' as http;
import 'package:legend_cinema/Model/Cinema/Cinema.dart';

class Cinema extends StatefulWidget {
  const Cinema({super.key});
  @override
  State<Cinema> createState() {
    return SearchCinemaState();
  }
}

class SearchCinemaState extends State<Cinema> {
  var isLoadingFirst = true;
  @override
  void initState() {
    // TODO: implement initState
    // setState(() {
    //   isLoadingFirst = true;
    // });
    super.initState();
    // Future.delayed(Duration(seconds: 2), () {
    //   setState(() {
    //     isLoadingFirst = false;
    //   });
    // });
    getListCinema();
  }

  void getListCinema() async {
    setState(() {
      listCinema = [];
    });
    final Map<String, dynamic> requestBody = {
      'id': 0,
    };
    print("call api list cinema");
    final response = await http.post(
      Uri.parse("http://10.0.2.2:8080/api/cinema/list"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8', // Set headers
      },
      body: jsonEncode(requestBody),
    );
    if (response.statusCode == 200) {
      setState(() {
        isLoadingFirst = false;
        listCinema.add(
          const CinemaData(1, "Legend Cinema 271 Mega",
              "3rd Floor, Chip Mong Mega Mall,", "assets/Image/branch/squ.jpg"),
        );
      });
      // Parse JSON array
      final List<dynamic> jsonList = jsonDecode(response.body);
      print(jsonList);
      // Map JSON objects to Food models
      listCinema = jsonList.map((json) => CinemaData.fromJson(json)).toList();
    }
  }

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
            child: isLoadingFirst
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
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
          )
        ],
      ),
    );
  }
}
