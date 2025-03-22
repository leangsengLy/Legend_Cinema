import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Screen/MainLegend.dart';

import 'package:google_fonts/google_fonts.dart';

//start build this project on 10-03-2025 10:44PM
//Ly zee vlogger Programing
void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: "Legend By LyZee",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 176, 44, 39),
            brightness: Brightness.dark,
          ),
          textTheme: TextTheme(
            displayLarge: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            // ···
            titleLarge: GoogleFonts.oswald(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
            bodyMedium: GoogleFonts.merriweather(),
            displaySmall: GoogleFonts.pacifico(),
          ),
        ),
        home: const Mainlegend(),
      ),
    ),
  );
}
