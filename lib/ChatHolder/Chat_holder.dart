import 'package:blah/ChatHolder/ChatPage.dart';

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
          color: Colors.white,

        ),
        child: Column(
          children: [
            Chatpage(),
          ],
        ),
      ),
    );
  }
}
