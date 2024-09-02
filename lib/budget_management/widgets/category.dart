import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor, 
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.sizeOf(context).width / 4,
      height: MediaQuery.sizeOf(context).height / 8,
      child: const Center(
        child: Text(
          'Food',
          style: TextStyle(
            color: AppColors.appBarTextColor, 
          ),
        ),
      ),
    );
  }
}
