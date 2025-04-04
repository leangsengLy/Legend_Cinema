import 'package:flutter/material.dart';
import 'package:legend_cinema/Model/food/food.dart';

class SummaryDetail extends StatelessWidget {
  const SummaryDetail({
    super.key,
    required this.selectedFood,
    required this.summaryTotal,
    this.onClickSummaryIcon,
  });
  final List<Food> selectedFood;
  final double summaryTotal;
  final Function(
          BuildContext context, List<Food> selectedFood, double summaryTotal)?
      onClickSummaryIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: Text(
                  selectedFood.length.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Summary",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        "\$ $summaryTotal",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  onClickSummaryIcon!(context, selectedFood, summaryTotal);
                },
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 134, 16, 0),
            ),
            child: const Text("Continue"),
          ),
        ),
      ],
    );
  }
}
