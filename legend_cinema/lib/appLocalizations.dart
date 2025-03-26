import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppLocalizations {
  Map<String, String> _localizedStrings = {};

  // Load the language JSON file
  Future<void> load(String languageCode) async {
    String jsonString =
        await rootBundle.loadString('assets/lang/$languageCode.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  // Get translated string
  String translate(String key, {Map<String, String>? params}) {
    String? text = _localizedStrings[key];
    if (text == null) return key; // Fallback to key if translation not found
    if (params != null) {
      params.forEach((paramKey, value) {
        text = text!.replaceAll('{$paramKey}', value);
      });
    }
    return text!;
  }

  // Static instance for easy access
  static AppLocalizations? of(context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);
}
