import 'package:flutter/material.dart';

class Cardoffer extends StatelessWidget {
  const Cardoffer({super.key, required this.pathImage});
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.black, Color.fromARGB(200, 255, 255, 255)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        color: const Color.fromARGB(71, 204, 204, 204),
        border: Border.all(
          color: const Color.fromARGB(76, 255, 255, 255),
        ),
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
          const Row(
            children: [
              Expanded(
                child: Text(
                  "រឿងក្រុមស៊ើបអង្កេតកំពូលកូរ អីឡុវនេះកំពុងចាក់បញ្ចាំងនៅគ្រប់រោងភាពយន្តលេជេន ទិញសំបុត្រ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
