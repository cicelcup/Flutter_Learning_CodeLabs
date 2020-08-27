import 'package:english_words/english_words.dart';

//First App Provider
class FirstAppProvider {
  final List<WordPair> suggestions = <WordPair>[];

  //add 10 additional suggestions to the list
  addSuggestions() => suggestions.addAll(generateWordPairs().take(10));
}
