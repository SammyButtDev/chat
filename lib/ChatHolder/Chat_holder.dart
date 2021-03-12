import 'package:blah/ChatHolder/ChatPage.dart';
import 'package:blah/Screens/StatusScreen.dart';
import 'package:blah/constant.dart';
import 'package:flutter/material.dart';



class ChatHolder extends StatefulWidget {
  @override
  _ChatHolderState createState() => _ChatHolderState();
}

class _ChatHolderState extends State<ChatHolder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Chat_page(),
            ],
          ),
        ),
      ),
    );
  }
}
