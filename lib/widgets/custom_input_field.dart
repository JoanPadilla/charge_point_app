import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {
  
  final bool obscureText;
  final String? Function(String?)? validator;
  final Map<String, String> formValues;
  final String formProperty;
  final String hintText;
  final IconData iconData;
  final TextInputType? inputType;
  
  const CustomInputField({
    Key? key,
    this.obscureText = false,
    this.validator,
    this.inputType,
    required this.formValues,
    required this.formProperty,
    required this.hintText,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureText,
      validator: validator,
      onChanged: (value) => formValues[formProperty] = value,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(iconData),
      ),
    );
  }
}