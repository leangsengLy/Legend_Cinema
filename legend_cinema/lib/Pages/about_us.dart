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
                              AppLocalizations.of(context)!.translate(
                                  '''About_Legend_Cinema_Cambodia_Legend_Cinema_is_the_no_1_and_the_first_International_Standard_Cinema_in_Cambodia_created_and_operated_by_Khmer_since_2011_Our_rapid_growth_and_expansion_from_1_to_13_cinema_locations_in_the_past_12_years_across_the_country_has_shown_our_strength_in_delivery_and_influence_in_the_film_and_entertainment_industry_Today_we_have_successfully_implemented_and_deployed_advanced_cinema_technologies_and_levelled_up_our_offerings_beyond_cinema_norms_Our_team_is_dedicated_to_providing_top_tier_immersive_cinema_experience_and_excellent_services_with_the_essence_of_Khmer_hospitality_With_our_new_direction_in_place_we_are_determined_to_inspire_drive_change_and_make_an_impact_in_the_industry_and_exceed_expectations'''),
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
