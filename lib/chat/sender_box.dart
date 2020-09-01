import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/chat_provider.dart';
import 'package:fluttercodelabs/general/app_dimensions.dart';
import 'package:provider/provider.dart';

//Sender Box Widget.
class SenderBox extends StatefulWidget {
  const SenderBox({
    Key key,
  }) : super(key: key);

  @override
  _SenderBoxState createState() => _SenderBoxState();
}

class _SenderBoxState extends State<SenderBox> with TickerProviderStateMixin {
  final _controller = TextEditingController(); //Text Field Controller.

  //var to control the send button.
  var isNotEmptyMessage = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Text Field focus node.
    final _focusNode = FocusNode();

    //Chat Provider.
    final _provider = Provider.of<ChatProvider>(context);

    //Send Message, clear the controller and request focus for the text field.
    void sendMessage() {
      //set the animation controller inside the list
      var animation =
          AnimationController(duration: Duration(seconds: 1), vsync: this);
      _provider.addMessage(_controller.text, animation);
      _controller.clear();
      _focusNode.requestFocus();
      setState(() => isNotEmptyMessage = false);
    }

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.5),
        borderRadius: AppDimensions.sendContainerBorder,
      ),
      padding: AppDimensions.sendContainerPadding,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: _focusNode,
              controller: _controller,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  setState(() => isNotEmptyMessage = true);
                }
              },
              //add the message to the list.
              onSubmitted: (value) => sendMessage(),
              decoration: InputDecoration(hintText: 'Send a message'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: isNotEmptyMessage ? sendMessage : null,
          )
        ],
      ),
    );
  }
}
