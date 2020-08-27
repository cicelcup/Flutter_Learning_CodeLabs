//extensions on String
import 'package:english_words/english_words.dart';

extension StringExtension on String {
  //capitalize the first letter
  capitalizeFirst() => this[0].toUpperCase() + this.substring(1);
}

//extensions on Word Pair
extension WordPairExtension on WordPair {
  //return one better form of a new pair
  getFormatPair() =>
      "${this.first.capitalizeFirst()} - ${this.second.capitalizeFirst()}";
}
