import 'package:finance_advisor/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatelessWidget {
  final List<String> notifications = List.generate(6, (index) => 'You spent 20 \$ on Food');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // Use background color from AppColors
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor, // Use background color from AppColors
        elevation: 0,
        title: Center(
          child: Text(
            'Notifications',
            style: TextStyle(
              color: AppColors.appBarTextColor, // Use app bar text color from AppColors
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.appBarTextColor, // Use app bar text color from AppColors
              size: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the notification card
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.2), // Use primary color from AppColors for shadow
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    notifications[index],
                    style: TextStyle(
                      color: AppColors.primaryColor, // Use primary color from AppColors
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
