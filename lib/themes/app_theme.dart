import 'package:flutter/material.dart';


class AppTheme {
  
  static const Color primaryColor = Color.fromARGB(255, 81, 14, 126);
  static const Color secondaryColor = Color.fromARGB(255, 27, 201, 157);
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 2,
    ),
    
    scaffoldBackgroundColor: const Color.fromARGB(255, 254, 250, 255),
    
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
    
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primaryColor),
      
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
    )
  );
  
}