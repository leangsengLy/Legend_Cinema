import 'package:flutter/material.dart';

class Scheduleshow extends StatelessWidget {
  const Scheduleshow({
    super.key,
    required this.week,
    required this.day,
    required this.mon,
  });
  final String week;
  final int day;
  final String mon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: 60,
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                week,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                day.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                mon,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
