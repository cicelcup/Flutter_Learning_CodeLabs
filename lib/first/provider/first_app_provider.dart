import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//First App Provider
class FirstAppProvider extends ChangeNotifier {
  final List<WordPair> suggestions = <WordPair>[];

  final savedWords = Set<WordPair>();

  //add 10 additional suggestions to the list
  addSuggestions() => suggestions.addAll(generateWordPairs().take(10));

  addFavorite(WordPair pair) {
    savedWords.add(pair);
    notifyListeners();
  }

  removeFavorite(WordPair pair) {
    savedWords.remove(pair);
    notifyListeners();
  }
}
