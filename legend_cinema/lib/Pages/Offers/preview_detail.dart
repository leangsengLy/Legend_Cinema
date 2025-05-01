import 'package:flutter/material.dart';
import 'package:legend_cinema/Component/Screen/default_screen_background.dart';
import 'package:legend_cinema/appLocalizations.dart';

class PreviewDetail extends StatelessWidget {
  const PreviewDetail(
      {super.key, required this.urlImage, required this.description});
  final String urlImage;
  final String description;

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 200,
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
                  child: Image.network(
                    "http://10.0.2.2:8080$urlImage",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.translate(description),
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
    return Scaffold(
      body: DefaultScreenBackground(
        content: content,
        title: "Info Detail",
      ),
    );
  }
}
