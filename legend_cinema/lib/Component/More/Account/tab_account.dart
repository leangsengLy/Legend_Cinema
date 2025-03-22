import 'package:flutter/material.dart';

class TabAccount extends StatelessWidget {
  const TabAccount({super.key, required this.title, required this.itemTab});
  final String title;
  final List<Map<String, dynamic>> itemTab;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ...itemTab.map((val) {
            return Container(
              width: double.infinity,
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(29, 255, 255, 255),
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(61, 255, 255, 255),
                  ),
                  bottom: BorderSide(
                    color: Color.fromARGB(61, 255, 255, 255),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(14, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          val['icon'],
                          size: 18,
                          color: const Color.fromARGB(255, 253, 68, 68),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        val['label'],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        // style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        //       color: Theme.of(context).colorScheme.onPrimary,
                        //     ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            );
          }).toList(),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
