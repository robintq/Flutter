import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization_strings.dart';

const List<String> languageCodes = ['en', 'es'];

class MarvelLocalizations {
  MarvelLocalizations(this.locale);

  final Locale locale;

  static MarvelLocalizations of(BuildContext context) {
    return Localizations.of<MarvelLocalizations>(context, MarvelLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'es': es,
    'en': en
  };

  _getValue(String key) => _localizedValues[locale.languageCode][key];

  String get appTitle => _getValue(AppTitle);

  String get charactersTitle => _getValue(CharactersTitle);
  String get comicsTitle => _getValue(ComicsTitle);
  String get creatorsTitle => _getValue(CreatorsTitle);
  String get eventsTitle => _getValue(EventsTitle);
  String get seriesTitle => _getValue(SeriesTitle);
  String get storiesTitle => _getValue(StoriesTitle);

  String get registerTitle => _getValue(RegisterTitle);
  String get registerButton => _getValue(RegisterButton);

  String get addSomeText => _getValue(AddSomeText);
  String get noneFoundText => _getValue(NoneFoundText);

  // static Map<String, Map<String, String>> _localizedValues = {
  //   'en': {
  //     'appTitle': 'Marvel Comics',
  //     'characterTitle': 'Characters',
  //   },
  //   'es': {
  //     'title': 'Hola Mundo',
  //   },
  // };

  // String get appTitle => _localizedValues[locale.languageCode]['appTitle'];
  // String get characterTitle =>
  //     _localizedValues[locale.languageCode]['characterTitle'];
}

class MarvelLocalizationsDelegate
    extends LocalizationsDelegate<MarvelLocalizations> {
  const MarvelLocalizationsDelegate();

  @override
  Future<MarvelLocalizations> load(Locale locale) =>
      SynchronousFuture<MarvelLocalizations>(MarvelLocalizations(locale));

  @override
  bool shouldReload(MarvelLocalizationsDelegate old) => false;

  @override
  bool isSupported(Locale locale) =>
      languageCodes.contains(locale.languageCode); //"en"
}
