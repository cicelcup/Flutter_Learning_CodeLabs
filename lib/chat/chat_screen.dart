import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_dimensions.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

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
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                borderRadius: AppDimensions.sendContainerBorder,
              ),
              padding: AppDimensions.sendContainerPadding,
              child: Row(
                children: [
                  Expanded(child: TextField()),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
