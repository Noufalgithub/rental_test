import 'dart:ui';

import 'package:get/get.dart';

class TranslationService extends Translations {
  static final locale = const Locale('id', 'ID');
  static final fallbackLocale = const Locale('en', 'US');

  static final langs = ['English', 'Bahasa Indonesia'];
  static final locales = [const Locale('en', 'US'), const Locale('id', 'ID')];

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'hello': 'Hello', 'login': 'Login', 'register': 'Register'},
    'id_ID': {'hello': 'Halo', 'login': 'Masuk', 'register': 'Daftar'},
  };

  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale ?? locales.first;
  }
}
