import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/general/app_extensions.dart';
import 'package:provider/provider.dart';

/*Word Pair Item*/
class WordPairItem extends StatelessWidget {
  final int index;

  const WordPairItem({@required this.index}) : assert(index != null);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<FirstAppProvider>(context);
    final WordPair _pair = _provider.suggestions[index];

    final _isAlreadySaved = false;

    return ListTile(
      leading: Icon(
        Icons.import_contacts,
        color: Theme.of(context).primaryColor,
      ),
      trailing: Icon(
        _isAlreadySaved ? Icons.favorite : Icons.favorite_border,
        color: Theme.of(context).accentColor,
      ),
      title: Text("${_pair.first.capitalizeFirst()} - "
          "${_pair.second.capitalizeFirst()}"),
    );
  }
}
