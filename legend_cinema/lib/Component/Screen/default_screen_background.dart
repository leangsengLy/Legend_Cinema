import 'package:flutter/material.dart';

class DefaultScreenBackground extends StatelessWidget {
  const DefaultScreenBackground(
      {super.key, required this.title, required this.content});
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Th
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 134, 16, 0), // Starting color
                Colors.black, // Ending color
              ],
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25, // Adjust icon size to fit within the Container
            ),
          ),
        ),
      ),
      body: content,
    );
  }
}
