import 'package:flutter/material.dart';

class CardLocationCinema extends StatelessWidget {
  const CardLocationCinema({super.key, required this.pathImage});
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(76, 255, 255, 255)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 190,
            child: Image.asset(
              pathImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Legend Seksok",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4th Floor, Chip Mong sensok Mall",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
