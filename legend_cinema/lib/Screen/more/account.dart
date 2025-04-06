import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/More/Account/tab_account.dart';
import 'package:legend_cinema/Component/Screen/default_screen_background.dart';
import 'package:legend_cinema/Pages/about_us.dart';
import 'package:legend_cinema/Pages/contact.dart';
import 'package:legend_cinema/Pages/language.dart';
import 'package:legend_cinema/Component/Provider/translate/country.dart';
import 'package:legend_cinema/Pages/news.dart';
import 'package:legend_cinema/Pages/privacy.dart';
import 'package:legend_cinema/Pages/term_condition.dart';
import 'package:legend_cinema/Screen/Login/login.dart';
import 'package:legend_cinema/appLocalizations.dart';

class Account extends ConsumerStatefulWidget {
  const Account({super.key});
  @override
  ConsumerState<Account> createState() {
    return AccountState();
  }
}

class AccountState extends ConsumerState<Account> {
  var selectLanguage = "";
  void onSelectLanguage(String selected) {
    print("------------");
    print(selected);
    setState(() {
      if (selected == "English") {
        ref.watch(language.notifier).state = "en";
      } else if (selected == "Cambodia") {
        ref.watch(language.notifier).state = "km";
      } else if (selected == "Thailand") {
        ref.watch(language.notifier).state = "th";
      } else if (selected == "Lao") {
        ref.watch(language.notifier).state = "lo";
      } else if (selected == "Japanes") {
        ref.watch(language.notifier).state = "ja";
      } else if (selected == "Vietnam") {
        ref.watch(language.notifier).state = "vi";
      } else if (selected == "india") {
        ref.watch(language.notifier).state = "IN";
      } else if (selected == "Germany") {
        ref.watch(language.notifier).state = "de";
      } else if (selected == "China") {
        ref.watch(language.notifier).state = "zh";
      }
      selectLanguage = selected;
    });
  }

  @override
  void initState() {
    super.initState();
    // You can use ref here if needed, e.g., to initialize something
  }

  void onClickTabFeature(String title) {
    Widget? contentTab = Center(
      child: Text(title),
    );
    if (title == "contact_us") {
      contentTab = const Contact();
    }
    if (title == "system_language") {
      contentTab = Language(
        onSelectLanguage: onSelectLanguage,
      );
    }
    if (title == "news_and_activity") {
      contentTab = const News();
    }
    if (title == "about_us") {
      contentTab = const AboutUs();
    }
    if (title == "privacy_policy") {
      contentTab = Privacy(
        title: title,
      );
    }
    if (title == "term_condition") {
      contentTab = const TermCondition();
    }

    print(title);
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DefaultScreenBackground(
          title: title,
          content: contentTab!,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = const Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  void onClickButtonLoginOrSignUp(String type) {
    print("Login or Sign Up");
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DefaultScreenBackground(
          content: Login(),
          title: type,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = const Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
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
              height: 90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 134, 16, 0), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          AppLocalizations.of(context)!.translate("account"),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromARGB(255, 160, 19, 0),
                      width: 3,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "assets/Image/ME/1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Ly Zee Vlogger",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 189, 189, 189),
                                  Color.fromARGB(3, 255, 255, 255)
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => onClickButtonLoginOrSignUp("login"),
                            child: Text(
                              AppLocalizations.of(context)!.translate("login"),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 189, 189, 189),
                                  Color.fromARGB(3, 255, 255, 255)
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => onClickButtonLoginOrSignUp("signup"),
                            child: Text(
                              AppLocalizations.of(context)!.translate("signup"),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              width: double.infinity,
              height: 200,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: const Color.fromARGB(82, 95, 95, 95),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(50, 255, 255, 255),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Legend Membership",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Getting many benefits from our membership card. Take one now at your nearby Legend Cinema!",
                        style: TextStyle(
                          color: Color.fromARGB(188, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: 140,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "Learn More",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/Image/icon/gift.png",
                      height: 100,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "system_language", "icon": Icons.language}
              ],
              title: "language",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "news_and_activity", "icon": Icons.new_releases}
              ],
              title: "news",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "notification", "icon": Icons.notifications_active}
              ],
              title: "notification",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "about_us", "icon": Icons.account_box},
                {"label": "contact_us", "icon": Icons.call},
                {"label": "privacy_policy", "icon": Icons.privacy_tip},
                {"label": "term_condition", "icon": Icons.text_format_sharp},
                {"label": "feature_product", "icon": Icons.category},
              ],
              title: "about_us",
            ),
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
