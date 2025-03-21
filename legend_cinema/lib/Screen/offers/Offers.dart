import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';
import 'package:legend_cinema/Component/offers/CardOffer.dart';
import 'package:legend_cinema/Data/Offer/Offer.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});
  @override
  State<Offers> createState() {
    return SearchCinemaState();
  }
}

class SearchCinemaState extends State<Offers> {
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
                      "Offers",
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
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 100,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Image.asset(
                        "assets/Image/advertise/1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    ...listOffers.map(
                      (val) {
                        return Cardoffer(
                          pathImage: val.UrlImage,
                          description: val.description,
                        );
                      },
                    ).toList(),

                    // const Text(
                    //   "What's we offer",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 17,
                    //   ),
                    // ),
                    // const SizedBox(height: 10),
                    // const SizedBox(height: 16),
                    // const Cardoffer(
                    //   pathImage: "assets/Image/offers/2.jpeg",
                    // ),
                    // const SizedBox(height: 16),
                    // const Cardoffer(
                    //   pathImage: "assets/Image/offers/3.jpeg",
                    // ),
                    // const SizedBox(height: 16),
                    // const Cardoffer(
                    //   pathImage: "assets/Image/offers/4.jpeg",
                    // ),
                    // const SizedBox(height: 16),
                    // const Cardoffer(
                    //   pathImage: "assets/Image/offers/5.jpeg",
                    // ),
                    // const SizedBox(height: 16),
                    // const Cardoffer(
                    //   pathImage: "assets/Image/offers/6.jpeg",
                    // ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
