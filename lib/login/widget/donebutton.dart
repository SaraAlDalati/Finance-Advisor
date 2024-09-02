import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';


Widget DoneButton() {
  return ElevatedButton(
    onPressed: () {
      print("Button pressed");
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.appBarTextColor, // Use text color from AppColors
      backgroundColor: AppColors.primaryColor,    // Use primary color from AppColors
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 15,
      ),
      elevation: 5,
    ),
    child: const Text(
      'Done',
      style: TextStyle(fontSize: 18),
    ),
  );
}
