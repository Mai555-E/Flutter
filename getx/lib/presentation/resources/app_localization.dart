import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppLocalization {
  late final Locale? locale;
  AppLocalization({this.locale});

  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  static LocalizationsDelegate<AppLocalization> delegats = AppLocalizationDelegates();

  late Map<String, String> _localizationString;

  Future loadLangJson() async {
    String jsonString = await rootBundle.loadString("assets/lang/${locale!.languageCode}.json");

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    _localizationString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) => _localizationString[key] ?? "";
}

class AppLocalizationDelegates extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) {
    return ["en", "ar"].contains(locale.languageCode);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) => false;

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = AppLocalization(locale: locale);
    await localization.loadLangJson();
    return localization;
  }
}

class MyLocalController extends GetxController {
  String? change = 'en';
  final saveLocal = GetStorage();
  void changeLang(String langCode) {
    Locale locale = Locale(langCode);

    change = langCode;

    Get.updateLocale(locale);

    saveLocal.write("langCode", locale);

    //locale = saveLocal.read("langCode");
  }
}
