import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//First App Provider
class FirstAppProvider extends ChangeNotifier {
  final List<WordPair> suggestions = <WordPair>[];

  final savedWords = <WordPair>{};

  //add 10 additional suggestions to the list
  void addSuggestions() => suggestions.addAll(generateWordPairs().take(10));

  void addFavorite(WordPair pair) {
    savedWords.add(pair);
    notifyListeners();
  }

  void removeFavorite(WordPair pair) {
    savedWords.remove(pair);
    notifyListeners();
  }
}
