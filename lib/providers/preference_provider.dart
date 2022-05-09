 import 'package:charge_point_app/share_preference/preference.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 
 
 class PreferenceProvider extends ChangeNotifier {
   
  Locale language;
  bool receiveNotifications = false;
  
  PreferenceProvider ({
    required this.language,
  });
  
  setLanguage(Locale? newLanguage) {
    if (newLanguage == null) return;
    language = newLanguage;
    Preference.language = language;
    Get.updateLocale(language);
    notifyListeners();
  }
  
  setNotifications(bool value) {
    receiveNotifications = value;
    Preference.notifications = value;
    notifyListeners();
  }
 }