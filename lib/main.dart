import 'package:finance_advisor/budget_management/screen/add_category.dart';
import 'package:finance_advisor/budget_management/screen/categories.dart';
import 'package:finance_advisor/budget_management/screen/category_details.dart';
import 'package:finance_advisor/homepage/screen/homepage.dart';
import 'package:finance_advisor/login/Screen/login.dart';
import 'package:finance_advisor/notifications/screen/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(), 
    );
  }
}
