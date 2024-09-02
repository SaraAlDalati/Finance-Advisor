import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/row_text.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Budget Management',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: AppColors.appBarTextColor, 
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, 
        elevation: 0, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowText(
              first: 'Category:',
              second: 'Food',
              firstColor: AppColors.primaryColor, 
              secondColor: AppColors.appBarTextColor, 
            ),
            RowText(
              first: 'Total Budget:',
              second: '4000',
              firstColor: AppColors.primaryColor, 
              secondColor: AppColors.appBarTextColor, 
            ),
            const SizedBox(height: 16.0), 
            const Text(
              'Add Spent Amount:',
              style: TextStyle(
                color: AppColors.primaryColor, 
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0), 
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(), 
                hintText: 'Enter amount', 
              ),
              keyboardType: TextInputType.number, 
            ),
            const SizedBox(height: 16.0), 
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primaryColor.withOpacity(0.1), 
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: AppColors.appBarTextColor, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0), 
            RowText(
              first: 'Remaining Budget:',
              second: 'Result',
              firstColor: AppColors.primaryColor, 
              secondColor: AppColors.appBarTextColor, 
            ),
          ],
        ),
      ),
    );
  }
}
