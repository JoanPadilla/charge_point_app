import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  
  static late SharedPreferences _prefs;
  
  static List<String> _language = ['es', 'ES'];
  
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  
  static Locale get language {
    var codes = _prefs.getStringList('language') ?? _language;
    return Locale(codes[0], codes[1]);
  }
  
  static set language (Locale language) {
    _language = [language.languageCode, language.countryCode!];
    _prefs.setStringList('language', _language);
  }
  
  static bool get notifications {
    var value = _prefs.getBool('notifications');
    return value ?? false;
  }
  
  static set notifications (bool value) {
    _prefs.setBool('notifications', value);
  }
}