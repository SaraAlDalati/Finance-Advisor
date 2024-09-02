import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  const RowText({
    Key? key,
    required this.first,
    required this.second,
    this.firstColor = AppColors.appBarTextColor, 
    this.secondColor = AppColors.primaryColor,    
  }) : super(key: key);

  final String first;
  final String second;
  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          first,
          style: TextStyle(
            color: firstColor, 
            fontWeight: FontWeight.bold, 
          ),
        ),
        const SizedBox(width: 8.0), 
        Text(
          second,
          style: TextStyle(
            color: secondColor, 
          ),
        ),
      ],
    );
  }
}
