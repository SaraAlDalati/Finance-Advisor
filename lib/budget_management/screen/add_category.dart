import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';
// Import the AppColors

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add New Category:',
              style: TextStyle(
                color: AppColors.primaryColor, 
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            const SizedBox(height: 8.0), 
            const TextField(
              autocorrect: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(), 
                hintText: 'Enter category name', 
              ),
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16.0), 
            const Text(
              'Total Budget:',
              style: TextStyle(
                color: AppColors.primaryColor, 
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter total budget',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Notes:',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter any notes',
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: TextButton(
                onPressed: () {
                  
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1), 
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: AppColors.appBarTextColor, 
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
