import 'package:flutter/material.dart';
import 'package:legend_cinema/appLocalizations.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.translate("Terms & Conditions"),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!
                  .translate("Ticket Purchased Rule and Regulation"),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  '''1. Every movie tickets purchased via the Sale Channels are strictly non-refundable and are not available for exchange under whatever circumstances.
2. Purchased tickets are not exchangeable for tickets at a different price, for another movie, or for another screening or day.
3. Movie tickets purchased via the Sales Channels will be available for collection at the relevant cinema from the ticket counter or at our KIOSK machine (where available) by producing the booking numbers/reservation sent by email or as available under the purchased history feature in Legend Mobile application or any other means that shall be introduced by Legend Cinema from time to time.
4. In case of any malfunctions of the reservation or purchase form placed on the website or mobile application, please contact us immediately at the following e-mail address hotline@legend.com.kh or contact our hotline 081300400 at least 30 minutes before the movie start. We would also like to inform you that it is the basis and condition for an effective complaint about the impossibility or difficulties in purchasing tickets online.
5. If the User fails to purchase a ticket for the screening for which he or she has reserved a seat in the Legend Cinema within the time limit specified in clause 4 above, the reservation of such a seat cannot be guaranteed.
6. Movie tickets are made available subject to the classification of relevant film given by the Film Censorship Board of Cambodia. Legend Cinema has a legal obligation to refuse admission to a person, who in the opinion of its duty manager, is under the minimum age required for NC15 and R18 classified films (including children in arms). Proof of age may be required in certain instances.'''),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  '''Legend Cinema reserved the rights to have term and condition changed.
All rights reserved Legend Cinema Co, Ltd 2024.'''),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
