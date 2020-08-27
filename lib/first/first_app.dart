import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/random_words.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

//First CodeLab
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStringsI18N.codeLabTitle1),
      ),
      body: RandomWords(),
    );
  }
}
