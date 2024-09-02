import 'package:finance_advisor/budget_management/widgets/category.dart';
import 'package:finance_advisor/constant/my_colors.dart'; 
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, 
      appBar: AppBar(
        title: const Text(
          'Budget Management',
          style: TextStyle(
            color: AppColors.appBarTextColor, 
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.iconColor), 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'My Categories',
                  style: TextStyle(
                    color: AppColors.appBarTextColor, 
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color: AppColors.iconColor, 
                )
              ],
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20, 
                ),
                itemCount: 10,
                itemBuilder: (context, index) => const Category(), 
              ),
            )
          ],
        ),
      ),
    );
  }
}
