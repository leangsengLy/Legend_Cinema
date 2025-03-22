import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/More/Account/tab_account.dart';

class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State<Account> createState() {
    return AccountState();
  }
}

class AccountState extends State<Account> {
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
            const TabAccount(
              itemTab: [
                {"label": "English", "icon": Icons.language}
              ],
              title: "Language",
            ),
            const TabAccount(
              itemTab: [
                {"label": "News & Acticity", "icon": Icons.new_releases}
              ],
              title: "What's new?",
            ),
            const TabAccount(
              itemTab: [
                {"label": "Notifications", "icon": Icons.notifications_active}
              ],
              title: "Notifications",
            ),
            const TabAccount(
              itemTab: [
                {"label": "Abous us", "icon": Icons.account_box},
                {"label": "Contact us", "icon": Icons.call},
                {"label": "Privacy Policy", "icon": Icons.privacy_tip},
                {"label": "Term & Conditions", "icon": Icons.text_format_sharp},
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
