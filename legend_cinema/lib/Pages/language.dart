import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/Provider/translate/country.dart';

class Language extends ConsumerStatefulWidget {
  const Language({super.key, this.onSelectLanguage});
  final Function? onSelectLanguage;

  @override
  ConsumerState<Language> createState() {
    return LanguageState();
  }
}

class LanguageState extends ConsumerState<Language> {
  var checkLanguage = "English";
  @override
  void initState() {
    super.initState();
  }

  void selectLanguage(String language) {
    setState(() {
      checkLanguage = language;
    });
  }

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
            child: Localizations.override(
              context: context,
              locale: Locale(ref.watch(language).toString()),
              child: Builder(
                builder: (context) {
                  return Text(AppLocalizations.of(context)!.language);
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          ...["English", "Cambodia"].map((val) {
            return InkWell(
              onTap: () {
                widget.onSelectLanguage!(val);
                selectLanguage(val);
              },
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 0.8,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(0, 255, 255, 255),
                            Color.fromARGB(164, 255, 255, 255),
                            Color.fromARGB(0, 255, 255, 255),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(val == "English"
                                    ? "assets/Image/flag/uk.png"
                                    : "assets/Image/flag/cam.png"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              val,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        checkLanguage == val
                            ? const Icon(
                                Icons.radio_button_checked,
                                color: Colors.red,
                                size: 22,
                              )
                            : const Text("")
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
