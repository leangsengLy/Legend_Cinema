import 'package:flutter/material.dart';

class Itemtab extends StatelessWidget {
  const Itemtab(
      {super.key,
      required this.label,
      required this.icon,
      required this.onClickTabItem});
  final String label;
  final IconData icon;
  final Function onClickTabItem;
  void onClickTab(String label) {
    onClickTabItem(label);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickTab(label);
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
