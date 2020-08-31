import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/general/app_colors.dart';
import 'package:fluttercodelabs/general/app_extensions.dart';
import 'package:provider/provider.dart';

/*Word Pair Item*/
class WordPairItem extends StatelessWidget {
  final int index;

  const WordPairItem({@required this.index}) : assert(index != null);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<FirstAppProvider>(context);
    final _pair = _provider.suggestions[index];

    //check if the word is already saved in the set
    final _isAlreadySaved = _provider.savedWords.contains(_pair);

    return ListTile(
      leading: Icon(
        Icons.import_contacts,
        color: Theme.of(context).primaryColor,
      ),
      trailing: Icon(
        _isAlreadySaved ? Icons.favorite : Icons.favorite_border,
        color: AppColors.favoriteColor,
      ),
      title: Text(_pair.getFormatPair()),
      //Save or remove word pairs from favorite list
      onTap: () {
        if (_isAlreadySaved) {
          _provider.removeFavorite(_pair);
        } else {
          _provider.addFavorite(_pair);
        }
      },
    );
  }
}
