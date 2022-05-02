 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
 
 class PreferenceProvider extends ChangeNotifier {
   
   Locale _language = const Locale('en', 'UK');
   
   Locale get language {
     return _language;
   }
   
   set language(Locale language) {
     _language = language;
     Get.updateLocale(language);
     notifyListeners();
   }
 }