import 'package:blah/ChatHolder/ChatPage.dart';
import 'package:blah/Screens/ContactScreen.dart';
import 'package:blah/SearchBarCustom/defaultappbar.dart';
import 'package:blah/camerawidget/camerascreen.dart';
import 'package:blah/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum HomeMENU { Call, VideoCall, Status, Group, Mute, Delete }

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Message>chatmodels;
  final Message sourcechat;

   HomeScreen({Key key, this.chatmodels,this.sourcechat}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(backgroundColor: Theme.of(context).primaryColor,
        key: widget.scaffoldKey,
        resizeToAvoidBottomInset: false,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              splashColor: CupertinoColors.activeBlue,
              heroTag: "camera",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => CameraScreen()));
                },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.camera_alt,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            FloatingActionButton(
              heroTag: "text",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => SelectContact()));
              },
              backgroundColor: CupertinoColors.activeBlue,
              child: Icon(
                CupertinoIcons.pen,size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
        appBar: DefaultAppBar(),
        body: CupertinoPageScaffold(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Chatpage(
                chatmodels: widget.chatmodels,
                sourcechat: widget.sourcechat,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
