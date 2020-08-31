import 'package:flutter/animation.dart';

///Store the chat message, the sender name and the animation controller.
class ChatMessage {
  final String message;
  final String sender;
  final AnimationController animationController;

  ChatMessage(this.message, this.sender, this.animationController);
}
