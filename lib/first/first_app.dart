import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

//First CodeLab
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStringsI18N.codeLabTitle1),
      ),
      body: Center(
        child: Text("${wordPair.first} - ${wordPair.second}"),
      ),
    );
  }
}
