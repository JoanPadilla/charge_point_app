import 'package:flutter/material.dart';


class AppTheme {
  
  static const Color primaryColor = Colors.deepPurple;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 2,
    ),
    
    iconTheme: const IconThemeData(
      color: primaryColor,
    )
  );
  
}