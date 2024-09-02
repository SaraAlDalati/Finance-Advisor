import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:finance_advisor/homepage/widget/Homepagebutton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, 
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor, 
        title: Center(
          child: Text(
            'HomePage',
            style: TextStyle(
              color: AppColors.appBarTextColor, 
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.notifications,
              color: AppColors.iconColor, 
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageButton(
              text: 'Budget management',
              onTap: () {
                // Get.to(BudgetManagementPage());
              },
            ),
            HomePageButton(
              text: 'Expense Tracking',
              onTap: () {
                // Get.to(ExpenseTrackingPage());
              },
            ),
            HomePageButton(
              text: 'Recommendations',
              onTap: () {
                // Get.to(RecommendationsPage());
              },
            ),
            HomePageButton(
              text: 'Settings',
              onTap: () {
                // Get.to(SettingsPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
