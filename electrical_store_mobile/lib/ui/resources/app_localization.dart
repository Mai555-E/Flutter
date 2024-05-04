import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppLocalization {
  late  Locale? locale;
  AppLocalization({this.locale});

  static AppLocalization? of(BuildContext) {
    return Localizations.of<AppLocalization>(BuildContext, AppLocalization);
  }

  void changeLang() => Get.updateLocale( locale = locale!.languageCode == 'en'? Locale("ar"): Locale("en"));
  

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

extension translateString on String {
  String tran(BuildContext context) => AppLocalization.of(context)!.translate(this);
}
