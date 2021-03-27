import 'package:blah/ChatHolder/Chat_holder.dart';
import 'package:blah/Screens/CallLogScreen.dart';
import 'package:blah/SearchBarCustom/defaultappbar.dart';
import 'package:blah/Settings/SettingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum HomeMENU { Call, VideoCall, Status, Group, Mute, Delete }

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            splashColor: CupertinoColors.activeBlue,
            heroTag: "camera",
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          FloatingActionButton(
            heroTag: "text",
            onPressed: () {},
            backgroundColor: CupertinoColors.activeBlue,
            child: Icon(
              CupertinoIcons.pen,size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      appBar: DefaultAppBar(),
      body: Column(
        children: [
          ChatHolder(),
        ],
      ),
    );
  }
}
