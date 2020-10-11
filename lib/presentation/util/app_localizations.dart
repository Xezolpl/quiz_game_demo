import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

const Locale plPL = const Locale('pl', 'PL');
const Locale enUS = const Locale('en', 'US');

class AppLocalizations {
  final Locale locale;

  const AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, String> _localizedStrings;

  static Future<AppLocalizations> load(Locale locale) async {
    String jsonString = await rootBundle
        .loadString('assets/translations/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    //Save the current language to the shared preferences
    await SharedPreferences.getInstance().then(
        (sharedPref) => sharedPref.setString('lang', locale.languageCode));

    return AppLocalizations(locale);
  }

  // This method will be called from every widget which needs a localized text
  static String translate(String key) {
    return _localizedStrings[key];
  }

  static Future<Locale> getPrefferedLocale() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.containsKey('lang')) {
      return preferences.getString('lang') == 'pl' ? plPL : enUS;
    } else {
      //preferences are empty or something went wrong -> use enUS
      preferences.setString('lang', 'en');
      return enUS;
    }
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  AppLocalizationsDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) {
    //All supported locales should be in that [] list
    return ['en', 'pl'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
