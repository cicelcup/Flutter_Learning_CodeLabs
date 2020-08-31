import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/first/word_pair_item.dart';
import 'package:provider/provider.dart';

//infinite list
class RandomWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _length = context.select<FirstAppProvider, int>(
        (provider) => provider.suggestions.length);

    return ListView.builder(itemBuilder: (_, index) {
      if (index.isOdd) return Divider();
      //Check the length of the list and add new words
      if (index >= _length) {
        Provider.of<FirstAppProvider>(context, listen: false).addSuggestions();
      }
      return WordPairItem(index: index);
    });
  }
}
