import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

//Main Screen
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStringsI18N.mainScreenAppBarTitle),
      ),
    );
  }
}
