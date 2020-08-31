//extensions on String
import 'package:english_words/english_words.dart';

extension StringExtension on String {
  //capitalize the first letter
  String capitalizeFirst() => this[0].toUpperCase() + substring(1);
}

//extensions on Word Pair
extension WordPairExtension on WordPair {
  //return one better form of a new pair
  String getFormatPair() =>
      '${first.capitalizeFirst()} - ${second.capitalizeFirst()}';
}
