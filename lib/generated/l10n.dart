// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Witaj`
  String get welcomeTo {
    return Intl.message(
      'Witaj',
      name: 'welcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `Najbardziej popularne`
  String get mostPopular {
    return Intl.message(
      'Najbardziej popularne',
      name: 'mostPopular',
      desc: '',
      args: [],
    );
  }

  /// `Nazwa gry`
  String get gameName {
    return Intl.message(
      'Nazwa gry',
      name: 'gameName',
      desc: '',
      args: [],
    );
  }

  /// `Twoja lista życzeń`
  String get yourWishList {
    return Intl.message(
      'Twoja lista życzeń',
      name: 'yourWishList',
      desc: '',
      args: [],
    );
  }

  /// `Lista życzeń`
  String get wishList {
    return Intl.message(
      'Lista życzeń',
      name: 'wishList',
      desc: '',
      args: [],
    );
  }

  /// `Nieznany błąd`
  String get unknownError {
    return Intl.message(
      'Nieznany błąd',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Coś poszło nie tak`
  String get somethingWentWrong {
    return Intl.message(
      'Coś poszło nie tak',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Biblioteka`
  String get library {
    return Intl.message(
      'Biblioteka',
      name: 'library',
      desc: '',
      args: [],
    );
  }

  /// `Profil`
  String get profile {
    return Intl.message(
      'Profil',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Ukończona? Nieukończona`
  String get finishedNotFinished {
    return Intl.message(
      'Ukończona? Nieukończona',
      name: 'finishedNotFinished',
      desc: '',
      args: [],
    );
  }

  /// `GameManagement`
  String get gameManagement {
    return Intl.message(
      'GameManagement',
      name: 'gameManagement',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
