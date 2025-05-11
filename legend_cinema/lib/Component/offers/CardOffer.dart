import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardoffer extends StatelessWidget {
  const Cardoffer(
      {super.key,
      required this.pathImage,
      required this.description,
      this.label,
      this.onClickCard});
  final String pathImage;
  final String description;
  final String? label;
  final Function(BuildContext context, String urlImage, String description)?
      onClickCard;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onClickCard!(context, pathImage, description);
          },
          child: Container(
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
                  child: Image.network(
                    "http://10.0.2.2:8080$pathImage",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        label!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        // style: GoogleFonts.notoSansKhmer(
                        //   fontSize: 20,
                        // ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
