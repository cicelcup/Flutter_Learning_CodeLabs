import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/sender_box.dart';
import 'package:fluttercodelabs/general/app_dimensions.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

import 'chat_list.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStringsI18N.codeLabTitle3),
      ),
      body: Padding(
        padding: AppDimensions.chatScreenMargin,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: ChatList()),
            SizedBox(
              height: 24.0,
            ),
            SenderBox(),
          ],
        ),
      ),
    );
  }
}
