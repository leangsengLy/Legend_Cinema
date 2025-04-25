import 'package:flutter/material.dart';

class CardLegendFood extends StatelessWidget {
  const CardLegendFood(
      {super.key,
      required this.url,
      required this.title,
      required this.onClickCinemaFood});
  final String url;
  final String title;
  final Function onClickCinemaFood;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickCinemaFood(context);
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(color: Color.fromARGB(61, 255, 255, 255)),
              ),
              color: Color.fromARGB(26, 51, 51, 51),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 90,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.network(
                          "http://10.0.2.2:8080$url",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
