 import 'package:flutter/material.dart';
 
 
 class PreferenceProvider extends ChangeNotifier {
   
   String _language = 'english';
   
   String get language {
     return _language;
   }
   
   set language(String language) {
     _language = language;
     notifyListeners();
   }
 }