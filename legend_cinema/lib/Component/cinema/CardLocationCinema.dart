import 'package:flutter/material.dart';

class CardLocationCinema extends StatelessWidget {
  const CardLocationCinema(
      {super.key,
      required this.pathImage,
      required this.name,
      required this.location});
  final String pathImage;
  final String name;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                child: Image.network(
                  "http://10.0.2.2:8080$pathImage",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
