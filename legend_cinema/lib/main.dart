import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/Provider/translate/country.dart';
import 'package:legend_cinema/Screen/MainLegend.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:legend_cinema/appLocalizationsDelegate.dart';

//start build this project on 10-03-2025 10:44PM
//Ly zee vlogger Programing
void main() {
  runApp(
    const ProviderScope(
      child: AppLengend(),
    ),
  );
}

class AppLengend extends ConsumerStatefulWidget {
  const AppLengend({super.key});
  @override
  ConsumerState<AppLengend> createState() {
    return AppLengendState();
  }
}

class AppLengendState extends ConsumerState<AppLengend> {
  @override
  Widget build(BuildContext context) {
    print(ref.watch(language).toString());
    return MaterialApp(
      locale: Locale(ref.watch(language).toString(), ''),
      title: "Legend By LyZee",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 176, 44, 39),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Nokora', // Primary font
            fontFamilyFallback: ['NotoSansKhmer'], // Fallback font
          ),
        ),
        // textTheme: TextTheme(
        //   displayLarge: const TextStyle(
        //     fontSize: 72,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   // ···
        //   titleLarge: GoogleFonts.oswald(
        //     fontSize: 16,
        //   ),
        //   bodyMedium: GoogleFonts.merriweather(),
        //   displaySmall: GoogleFonts.pacifico(),
        // ),
      ),
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('km', ''),
        Locale('th', ''),
        Locale('ja', ''),
        Locale('lo', ''),
        Locale('vi', ''),
        Locale('hi', 'IN'),
        Locale('de', ''),
        Locale('zh', ''),
      ],
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first; // Default to first supported locale
      },
      home: const Mainlegend(),
    );
  }
}
