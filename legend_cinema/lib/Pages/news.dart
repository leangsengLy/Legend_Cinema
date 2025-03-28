import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';
import 'package:legend_cinema/Component/offers/CardOffer.dart';
import 'package:legend_cinema/Data/Offer/Offer.dart';

class News extends StatefulWidget {
  const News({super.key});
  @override
  State<News> createState() {
    return NewsState();
  }
}

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 100,
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
                        "assets/Image/news/6.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    ...listNews.map(
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
