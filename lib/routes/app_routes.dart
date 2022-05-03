import 'package:charge_point_app/models/menu_option.dart';
import 'package:charge_point_app/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'home', screen: const HomeScreen()),
    MenuOption(route: 'record', icon: Icons.library_books_rounded, name: 'history', screen: const HistoryScreen()),
    MenuOption(route: 'incidence', icon: Icons.warning_amber_rounded, name: 'incidences', screen: const IncidenceScreen()),
    MenuOption(route: 'settings', icon: Icons.settings, name: 'settings', screen: const SettingsScreen()),
  ];
  
  static final Map<String, Widget Function(BuildContext)> secondaryRoutes = {
    'charge_point' : ( _ ) => const ChargePointScreen(),
    'sign_up' : ( _ ) => const RegistrationScreen(),
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