import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/cinema/CardLocationCinema.dart';
import 'package:legend_cinema/Component/offers/CardOffer.dart';
import 'package:legend_cinema/Data/Offer/Offer.dart';
import 'package:legend_cinema/Pages/Offers/preview_detail.dart';

class News extends StatefulWidget {
  const News({super.key});
  @override
  State<News> createState() {
    return NewsState();
  }
}

class NewsState extends State<News> {
  void onClickCard(BuildContext context, String urlImage, String description) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => PreviewDetail(
          urlImage: urlImage,
          description: description,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                      const SizedBox(
                        height: 20,
                      ),
                      ...listNews.map(
                        (val) {
                          return Cardoffer(
                            pathImage: val.UrlImage,
                            description: val.description,
                            onClickCard: onClickCard,
                          );
                        },
                      ).toList(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
