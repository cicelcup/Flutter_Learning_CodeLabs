import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/general/app_extensions.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';
import 'package:provider/provider.dart';

class FavoritePairScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _favoriteList = context
        .select<FirstAppProvider, Set>((provider) => provider.savedWords);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStringsI18N.favoritePairScreenAppBarTitle),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: _favoriteList.map(
            (e) => ListTile(title: Text((e as WordPair).getFormatPair())),
          ),
        ).toList(),
      ),
    );
  }
}
