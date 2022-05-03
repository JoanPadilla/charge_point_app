import 'package:flutter/material.dart';


class CustomSnackBar extends SnackBar {
  

  
  CustomSnackBar({
    Key? key,
    required Color color,
    required Color borderColor,
    required String text
  }) : super(
    key: key,
    duration: const Duration(seconds: 2),
    backgroundColor: Colors.transparent,
    elevation: 20,
      content: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: borderColor, width: 3),
        ),
        child: Text(text, style: const TextStyle(fontSize: 15),)
      ),
  );
}