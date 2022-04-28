import 'package:charge_point_app/models/menu_option.dart';
import 'package:charge_point_app/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Inicio', screen: const HomeScreen()),
    MenuOption(route: 'record', icon: Icons.library_books_rounded, name: 'Historial', screen: const HistoryScreen()),
    MenuOption(route: 'incidence', icon: Icons.warning_amber_rounded, name: 'Incidencias', screen: const IncidenceScreen()),
    MenuOption(route: 'settings', icon: Icons.settings, name: 'Ajustes', screen: const SettingsScreen()),
  ];
  
  static final Map<String, Widget Function(BuildContext)> secondaryRoutes = {
    'charge_point' : ( _ ) => const ChargePointScreen(),
    'sing_up' : ( _ ) => const RegistrationScreen(),
  };
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll(secondaryRoutes);
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route : ( _ ) => option.screen});
    }
    return appRoutes;
  }
  
}