import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_colors.dart';
import 'package:fluttercodelabs/general/app_dimensions.dart';

//Themes of the app
ThemeData getMainAppTheme() => ThemeData(
      primarySwatch: AppColors.primarySwatch,
      accentColor: AppColors.accent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dividerTheme: DividerThemeData(
        color: AppColors.secondaryColor,
        thickness: AppDimensions.dividerThickness,
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(
          color: AppColors.accent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
