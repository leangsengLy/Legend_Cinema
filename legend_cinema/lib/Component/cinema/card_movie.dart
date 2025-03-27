import 'package:flutter/widgets.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 450,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/Image/Movie/2.jpg",
            fit: BoxFit.cover,
            height: 260,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text("27 Mar, 2025"),
              const SizedBox(width: 10),
              Container(
                width: 39,
                padding: const EdgeInsets.all(1),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: const Text(
                  "G",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const Text("Ne Zha 2")
        ],
      ),
    );
  }
}
