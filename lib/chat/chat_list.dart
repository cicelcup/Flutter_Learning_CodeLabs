import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/chat_message.dart';
import 'package:fluttercodelabs/chat/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider where it stores the messages list
    final _chatMessages = Provider.of<ChatProvider>(context).chatMessages;
    return InputDecorator(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 5.0,
          ),
        ),
      ),
      child: ListView.builder(
        reverse: true,
        itemCount: _chatMessages.length,
        itemBuilder: (_, index) {
          return ListTileMessage(chatMessage: _chatMessages[index]);
        },
      ),
    );
  }
}

class ListTileMessage extends StatelessWidget {
  final ChatMessage chatMessage;

  const ListTileMessage({Key key, this.chatMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: chatMessage.animationController,
        curve: Curves.easeInCubic,
      ),
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: chatMessage.animationController,
          curve: Curves.easeOut,
        ),
        child: ListTile(
          visualDensity: VisualDensity(vertical: -2.0),
          leading: CircleAvatar(
            child: Icon(Icons.toys),
          ),
          title: Text(chatMessage.message),
          subtitle: Text(chatMessage.sender),
        ),
      ),
    );
  }
}
