import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<String> messages = [];

  //Add message and notify listener
  void addMessage(String value) {
    messages.insert(0, value);
    notifyListeners();
  }
}
