import 'package:audioplayers/audioplayers.dart';
import 'package:blah/Animations/ActiveButton.dart';
import 'package:blah/OtherUser.dart';
import 'package:blah/Screens/HomeScreen.dart';
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
                color: isMe ? widget.user.color:Colors.grey,
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
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => OtherProfile())),
          child: Row(
            children: [ CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              backgroundImage: AssetImage(
                widget.user.imageUrl,
              ),
            ),
              SizedBox(
                width: 3 ,
              ),
              Text(widget.user.name,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        backgroundColor: widget.user.color,
        actions: [
          IconButton(icon: Icon(Icons.videocam,color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.phone,color: Colors.white,), onPressed: (){}),
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
                color: Colors.white,
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
                           /* Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: isMe ? widget.user.color:Colors.grey,
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
                            ),*/
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
                    Expanded(
                      child: TextFormField(

                        style: TextStyle(

                            color: Theme.of(context).textTheme.bodyText1.color),
                        decoration: InputDecoration( focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          prefixIcon: IconButton(icon: Icon(Icons.emoji_emotions), onPressed: (){}),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          suffixIcon: SizedBox(width: 70,
                            child: Stack(
                              children:[
                              Row(mainAxisAlignment:MainAxisAlignment.end,children: [
                                Expanded(child: Icon(Icons.camera_alt_rounded)),
                                SizedBox(width: 10,),
                                SizedBox(
                                  height: 60.0,
                                  width: 60.0,
                                  child:PlayButton(
                                    initialIsPlaying: true,
                                    playIcon: Icon(Icons.mic,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    pauseIcon: Icon(
                                      Icons.mic,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],),
                              ],
                            ),
                          ),
                          hintText: "Node message",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:Colors.black,
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
                  FloatingActionButton(onPressed: (){},mini: true,child: _isTyping?Icon(Icons.send):Icon(Icons.add),),
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
