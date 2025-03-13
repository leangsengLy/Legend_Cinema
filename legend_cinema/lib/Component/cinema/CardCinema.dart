import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Cardcinema extends StatelessWidget {
  const Cardcinema(
      {super.key,
      required this.label,
      required this.isActive,
      required this.onClickCinema});
  final String label;
  final bool isActive;
  final Function onClickCinema;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickCinema(label);
      },
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              height: 1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(141, 37, 37, 37),
                    Color.fromARGB(137, 255, 255, 255),
                    Color.fromARGB(141, 37, 37, 37),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
                // gradient: const LinearGradient(colors: [
                //   Colors.white,
                //   Colors.black,
                // ]),
                // border: const GradientBoxBorder(
                //   gradient: LinearGradient(
                //     colors: [Colors.blue, Colors.red],
                //   ),
                // ),
                // borderRadius: BorderRadius.circular(16),
                ),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 29,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: isActive ? Colors.red : Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
