import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/random_words.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

//First CodeLab
class FirstAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStringsI18N.codeLabTitle1),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, AppStrings.favoriteListRoute);
            },
          )
        ],
      ),
      body: RandomWords(),
    );
  }
}
