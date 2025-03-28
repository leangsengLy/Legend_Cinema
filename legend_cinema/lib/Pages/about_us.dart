import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/offers/CardOffer.dart';
import 'package:legend_cinema/Data/Offer/Offer.dart';
import 'package:legend_cinema/appLocalizations.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
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
                          "assets/Image/news/4.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!
                                  .translate("About_Legend_Cinema"),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)!
                                  .translate('''Legend Cinema is the no. 
1 and the first International Standard Cinema in Cambodia, created and operated by Khmer since 2011. Our rapid growth and expansion from 1 to 13 cinema locations in the past 12 years across the country, has shown our strength in delivery and influence in the film and entertainment industry. 
Today, we have successfully implemented and deployed advanced cinema technologies and levelled up our offerings, beyond cinema norms. Our team is dedicated to providing top tier immersive cinema experience and excellent services with the essence of Khmer hospitality. With our new direction in place, we are determined to inspire, drive change and make an impact in the industry, and exceed expectations. '''),
                            ),
                            Text(
                              AppLocalizations.of(context)!.translate(
                                  '''We may employ third-party companies and individuals due to the following reasons:
To facilitate our Service;
To provide the Service on our behalf;
To perform Service-related services; or
To assist us in analyzing how our Service is used.
We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.'''),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "@Developer by LyZee Vlogger 28-03-2024",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
