import 'package:blah/Screens/CallLogScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoiceCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_backspace_outlined,
                  size: 25,
                  color: Theme.of(context).buttonColor,
                ),
                onPressed: () => Navigator.pop(
                    context, MaterialPageRoute(builder: (_) => CallLog())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "James",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Incoming call 00:27",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Text(""),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},heroTag: "VideoCall",elevation: 0,
                              child: Icon(
                                Icons.video_call_outlined,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Video",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},heroTag: "MuterVoiceCall",elevation: 0,
                              child: Icon(
                                Icons.mic_off,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Mute",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},heroTag: "AddCall",elevation: 0,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Add to Call",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},heroTag: "PauseVoiceCall",elevation: 0,
                              child: Icon(
                                Icons.pause,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hold",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},heroTag: "TransferVoiceCall",elevation: 0,
                              child: Icon(
                                Icons.add_ic_call,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Transfer Call",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            FloatingActionButton(
                              heroTag: "Speaker",
                              onPressed: () {},elevation: 0,
                              child: Icon(
                                Icons.volume_up,
                                color: Colors.black,
                                size: 35,
                              ),
                              backgroundColor: Colors.white70,
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Speaker",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 170,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton( heroTag: "VoiceCallCancel",elevation: 0,
                        backgroundColor: CupertinoColors.systemRed,
                        onPressed: (){},
                        child: Icon(
                          CupertinoIcons.phone_down_fill,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Cancel",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),)
                    ],
                  )),
            ),
          ],
        ),
    );
  }
}
