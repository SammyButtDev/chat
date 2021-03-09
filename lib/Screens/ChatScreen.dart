import 'package:audioplayers/audioplayers.dart';
import 'package:blah/Animations/ActiveButton.dart';
import 'package:blah/Screens/VoiceGroupCallScreen.dart';
import 'package:blah/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum WhyFarther { Call, VideoCall, Search, History, Mute, Delete }

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({Key key, this.user}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool playing = false;
  bool _isTyping = false;
  _Messages(Message message, bool isMe) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      message.text,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  Future getAudio() async {
    var url;
    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration == dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            color: Theme.of(context).primaryColor,
            onSelected: (WhyFarther result) {
              setState(() {});
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                textStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                value: WhyFarther.Call,
                child: Text(
                  'Call',
                ),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.VideoCall,
                child: Text(
                    'Video Call',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700),
                  ),

              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.Search,
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.History,
                child: Text('Clear history',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.Mute,
                child: Text('Mute Notification',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.Delete,
                child: Text('Delete Chat',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
              ),
            ],
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).buttonColor,
              ),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return Column(
                          crossAxisAlignment: isMe
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.end,
                          children: [
                            _Messages(message, isMe),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        icon: playing == false
                                            ? Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                                size: 30,
                                              )
                                            : Icon(
                                                Icons.pause,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                        onPressed: () {
                                          getAudio();
                                        }),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 0,
                                      child: Slider.adaptive(inactiveColor: Colors.white,
                                        activeColor: Colors.white,
                                        min: 0.0,
                                        value: position.inSeconds.toDouble(),
                                        max: 180.0,
                                        onChanged: (double value) {
                                          setState(() {
                                            audioPlayer.seek(new Duration(
                                                seconds: value.toInt()));
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ); //_Messages(message, isMe);
                      }),
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.emoji_emotions,
                        color: Colors.purple.shade300,
                        size: 29,
                      ),
                      onPressed: () {},
                    ),
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-45 / 360),
                      child: IconButton(
                        icon: Icon(
                          Icons.attach_file_outlined,
                          color: Colors.orangeAccent[400],
                          size: 29,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                        decoration: InputDecoration.collapsed(
                          hintText: " Type Something",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                        ),
                        onChanged: (value){
                          if(value.isNotEmpty){
                              setState(() => _isTyping = true);
                          } else{
                            setState(() => _isTyping = false);
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: PlayButton(
                        initialIsPlaying: true,
                        playIcon: Icon(
                          _isTyping ? Icons.send : Icons.mic,
                          size: 35,
                          color: Colors.orange,
                        ),
                        pauseIcon: Icon(
                          _isTyping ? Icons.send : Icons.mic,
                          color: Colors.orange,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
