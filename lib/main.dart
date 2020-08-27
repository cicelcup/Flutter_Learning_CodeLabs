import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';
import 'package:fluttercodelabs/general/app_theme.dart';
import 'package:fluttercodelabs/main/main_screen.dart';

void main() => runApp(MyApp());

//App Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStringsI18N.appTitle,
      theme: AppTheme.getMainAppTheme(),
      routes: {AppStrings.initRoute: (_) => MainScreen()},
      initialRoute: AppStrings.initRoute,
    );
  }
}
