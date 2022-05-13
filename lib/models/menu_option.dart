import 'package:flutter/material.dart';


class MenuOption {
  
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;
  final bool authNeeded;
  
  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
    this.authNeeded = false,
  });
  
}