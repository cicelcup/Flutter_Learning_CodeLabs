import 'package:flutter/material.dart';

class StartCounterProvider extends ChangeNotifier {
  var repositoryName = '';

  //Change the repository
  void changeRepository(String text) {
    repositoryName = text;
    notifyListeners();
  }
}
