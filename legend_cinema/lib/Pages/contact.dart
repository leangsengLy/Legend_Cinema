import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/More/Account/tab_account.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TabAccount(
          itemTab: [
            {"label": "015 844 712", "icon": Icons.phone},
            {"label": "Messager", "icon": Icons.message},
            {
              "label": "Info.LyZeeVloger@legend.com.kh",
              "icon": Icons.alternate_email,
            },
          ],
          title: "contact_info",
        ),
        SizedBox(height: 14),
        TabAccount(
          itemTab: [
            {"label": "015 888 722 / 088 444 222", "icon": Icons.phone},
            {
              "label": "marketing@legend.com.kh",
              "icon": Icons.alternate_email,
            },
          ],
          title: "advertising_and_partnership",
        ),
      ],
    );
  }
}
