import 'package:blah/Cards/ButtonCard.dart';
import 'package:blah/Screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Message sourceChat;

  List<Message> chatmodels = [
    Message(
        sender: james,
        time: '5:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
        id: 0),
    Message(
        sender: olivia,
        time: '4:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
        id: 1),
    Message(
        sender: john,
        time: '3:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
        id: 2),
    Message(
        sender: sophia,
        time: '2:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
        id: 3),
    Message(
        sender: steven,
        time: '1:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
        id: 4),
    Message(
        sender: sam,
        time: '12:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
        id: 5),
    Message(
        sender: greg,
        time: '11:30 AM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
        id: 6),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (context, index) => InkWell(
            onTap: (){
               sourceChat=chatmodels.removeAt(index);
               Navigator.push(context, CupertinoPageRoute(builder: (builder)=>HomeScreen(
                 chatmodels: chatmodels,
                 sourcechat: sourceChat,
               )));
            },
            child: ButtonCard(
                  name: chatmodels[index].sender.name,
                  icon: Icons.person,
                ),
          )),
    );
  }
}
