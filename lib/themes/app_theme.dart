import 'package:flutter/material.dart';


class AppTheme {
  
  static const Color primaryColor = Color.fromARGB(255, 81, 14, 126);
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 2,
    ),
    
    scaffoldBackgroundColor: const Color.fromARGB(255, 253, 247, 255),
    
    iconTheme: const IconThemeData(
      color: primaryColor,
    )
  );
  
}