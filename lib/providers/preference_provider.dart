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
   
   //TODO: improvisacion para probar el boton de las notificaciones
   bool _notificaciones = true;
   
   bool get notificaciones => _notificaciones;
   set notificaciones(bool value) {
     _notificaciones = value;
     notifyListeners();
   }
 }