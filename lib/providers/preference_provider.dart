 import 'package:charge_point_app/share_preference/preference.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 
 
 class PreferenceProvider extends ChangeNotifier {
   
   Locale language;
   
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
   
   
   //TODO: improvisacion para probar el boton de las notificaciones
   bool _notificaciones = true;
   
   bool get notificaciones => _notificaciones;
   set notificaciones(bool value) {
     _notificaciones = value;
     notifyListeners();
   }
 }