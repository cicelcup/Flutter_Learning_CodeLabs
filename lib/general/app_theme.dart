import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_colors.dart';

//Themes of the app
ThemeData getMainAppTheme() => ThemeData(
      primarySwatch: AppColors.primarySwatch,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
