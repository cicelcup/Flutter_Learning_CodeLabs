import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider where it stores the messages list
    final _messages = Provider.of<ChatProvider>(context).messages;
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
        itemCount: _messages.length,
        itemBuilder: (_, index) {
          return ListTile(
            visualDensity: VisualDensity(vertical: -2.0),
            leading: CircleAvatar(
              child: Icon(Icons.toys),
            ),
            title: Text(_messages[index]),
            subtitle: Text('Jorge Augusto'),
          );
        },
      ),
    );
  }
}
