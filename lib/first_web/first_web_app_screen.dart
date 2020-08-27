import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first_web/sign_up_form.dart';
import 'package:fluttercodelabs/general/app_colors.dart';

//First Web Screen
class FirstWebAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.webAppBackgroundColor,
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
