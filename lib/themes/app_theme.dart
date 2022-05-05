import 'package:flutter/material.dart';


class AppTheme {
  
  static const Color primaryColor = Color.fromARGB(255, 44, 14, 126);
  // static const Color primaryColor = Color.fromARGB(255, 81, 14, 126);
  static const Color secondaryColor = Color.fromARGB(255, 27, 201, 157);
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 2,
    ),
    
    scaffoldBackgroundColor: Colors.white,
    
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
    ),
    
  );
  
  static const InputDecoration loginInputDecoration = InputDecoration(
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: Color.fromARGB(76, 183, 218, 241),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.white)
        ),
  );
  
}