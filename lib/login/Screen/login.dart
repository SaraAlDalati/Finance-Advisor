import 'package:finance_advisor/constant/my_colors.dart';
import 'package:finance_advisor/login/controller/logincontroller.dart';
import 'package:finance_advisor/login/widget/buildtextfield.dart';
import 'package:finance_advisor/login/widget/donebutton.dart';
import 'package:finance_advisor/login/widget/logintext.dart';
import 'package:finance_advisor/login/widget/topimage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // Use background color from AppColors
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopImage(),
                const SizedBox(height: 20),
                LoginText(),
                const SizedBox(height: 30),
                InputFields(),
                const SizedBox(height: 30),
                DoneButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget to build the input fields for username and password
  Widget InputFields() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: [
            // Username Field
            buildTextFormField(
              'Username',
              controller: _controller.usernameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            // Password Field
            buildTextFormField(
              'Password',
              controller: _controller.passwordController,
              isPassword: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
