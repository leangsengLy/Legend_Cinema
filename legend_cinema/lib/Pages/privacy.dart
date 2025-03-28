import 'package:flutter/material.dart';
import 'package:legend_cinema/appLocalizations.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key, required this.title});
  final String title;
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
              AppLocalizations.of(context)!.translate("Privary Policy"),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!.translate(
                  "Vista Entertainment built the Legend Cinema app as a Free app. This SERVICE is provided by Vista Entertainment at no cost and is intended for use as is."),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  "This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service."),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  "The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Legend Cinema unless otherwise defined in this Privacy Policy."),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  ''' For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.
The app does use third party services that may collect information used to identify you.
Link to privacy policy of third party service providers used by the app
Google Play Services'''),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate(
                  "We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics."),
            ),
            const SizedBox(height: 20),
            const Text(
              "Cookies",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.translate(
                  '''Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.
This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.'''),
            ),
            const SizedBox(height: 20),
            const Text(
              "Service Providers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
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
          ],
        ),
      ),
    );
  }
}
