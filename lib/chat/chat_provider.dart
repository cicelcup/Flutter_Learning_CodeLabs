import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/chat_message.dart';

class ChatProvider extends ChangeNotifier {
  List<ChatMessage> chatMessages = [];

  //Add the chat Message, notify listeners and start the animation.
  void addMessage(String message, AnimationController controller) {
    var chatMessage = ChatMessage(message, 'Jorge Augusto', controller);
    chatMessages.insert(0, chatMessage);
    notifyListeners();
    //Start the animation
    controller.forward();
  }

  @override
  void dispose() {
    for (var message in chatMessages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
