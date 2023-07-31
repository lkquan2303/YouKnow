import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:you_know/lang/value/en_US.dart';
import 'package:you_know/lang/value/ko_KR.dart';
import 'package:you_know/lang/value/vi_VN.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  static final langCodes = ['en', 'vi', 'ko'];

  static final locales = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
    Locale('ko', 'KR'),
  ];

  static final langs =
      LinkedHashMap.from({'en': 'English', 'vi': 'Tiếng Việt', 'ko': 'Korea'});

  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'ko_KR': ko,
        'vi_VN': vi,
      };

  static Locale _getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale?.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale!;
  }
}
