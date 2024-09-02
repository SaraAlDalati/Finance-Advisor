import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';


Widget buildTextFormField(
  String labelText, {
  bool isPassword = false,
  required TextEditingController controller,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: AppColors.primaryColor, 
      ),
      filled: true,
      fillColor: AppColors.backgroundColor, 
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
    validator: validator,
  );
}
