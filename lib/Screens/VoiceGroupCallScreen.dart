import 'package:blah/Cards/CallingCard.dart';
import 'package:blah/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoiceGCall extends StatefulWidget {
  @override
  _VoiceGCallState createState() => _VoiceGCallState();
}

class _VoiceGCallState extends State<VoiceGCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CupertinoColors.systemRed,
        heroTag: "callCancelButton",
        child: Icon(
          Icons.call_end_outlined,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: Container(height:105,color:Theme.of(context).primaryColor,child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.linked_camera,size: 35,color: Theme.of(context).buttonColor,), onPressed: (){}),
            IconButton(icon: Icon(Icons.videocam_off,size: 35,color:Theme.of(context).buttonColor, ), onPressed: (){}),
            IconButton(icon: Icon(Icons.mic_off,size: 35,color: Theme.of(context).buttonColor,), onPressed: (){}),
          ],
        )),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: GridView.builder(
          itemCount: GroupCall.length,
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.53,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => demoData[index]['isCalling']
              ? CallingCard(name: demoData[index]["name"])
              : Image.asset(demoData[index]['image'],fit: BoxFit.fitHeight,),
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "images/goup_call_1.png",
  },
  {
    "isCalling": true,
    "name": "Greg",
    "image": "images/john.jpg",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "images/group_call_face_2.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "images/group_call_face_3.png",
  },
];
