import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/More/Account/tab_account.dart';
import 'package:legend_cinema/Component/Screen/default_screen_background.dart';
import 'package:legend_cinema/Pages/contact.dart';
import 'package:legend_cinema/Pages/language.dart';
import 'package:legend_cinema/Component/Provider/translate/country.dart';

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
    print(selected);
    setState(() {
      if (selected == "English") {
        ref.watch(language.notifier).state = "en";
      } else {
        ref.watch(language.notifier).state = "km";
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
    if (title == "Contact us") {
      contentTab = const Contact();
    }
    if (title == "System Language") {
      contentTab = Language(
        onSelectLanguage: onSelectLanguage,
      );
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
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: const Row(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                          const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
                          const Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
                {"label": "System Language", "icon": Icons.language}
              ],
              title: "Language",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "News & Acticity", "icon": Icons.new_releases}
              ],
              title: "What's new?",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "Notifications", "icon": Icons.notifications_active}
              ],
              title: "Notifications",
            ),
            TabAccount(
              isHasIcon: true,
              onClickTabFeature: onClickTabFeature,
              itemTab: const [
                {"label": "Abous us", "icon": Icons.account_box},
                {"label": "Contact us", "icon": Icons.call},
                {"label": "Privacy Policy", "icon": Icons.privacy_tip},
                {"label": "Term & Conditions", "icon": Icons.text_format_sharp},
                {"label": "Feature Product", "icon": Icons.category},
              ],
              title: "About us",
            ),
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
