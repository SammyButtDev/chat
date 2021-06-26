import 'package:blah/Animations/ActiveButton.dart';
import 'package:blah/Cards/OwnMessageCard.dart';
import 'package:blah/Cards/ReplyCard.dart';
import 'package:blah/OtherUser.dart';
import 'package:blah/constant.dart';
import 'package:blah/models/messagemodels.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../constant.dart';

enum WhyFarther { Call, VideoCall, Search, History, Mute, Delete }

// ignore: must_be_immutable
class ChatScreen extends StatefulWidget {
  final User user;
  final Message sourcechat;
  List<MessageModel> onmessages = [];

  ChatScreen({
    Key key,
    this.user,
    this.sourcechat,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  IO.Socket socket;
  final FocusNode focusNode = FocusNode();
  bool _isTyping = false;
  bool show = false;
  List<MessageModel> messages = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        setState(() {
          show=false;
        });
      }
    });
    connect();
  }

  void connect() {
    socket = IO.io("http://192.168.1.8:5000", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket.connect();
    socket.emit("signin", widget.sourcechat.id);
    socket.onConnect((data) {
      print("Connected");
      socket.on("message", (msg) {
        print(msg);
        setMessage("destination", msg["message"]);
      });
    });
    print(socket.connected);
  }

  void sendMessage(String message, int sourceId, int targetId) {
    setMessage("source", message);
    socket.emit("message",
        {"message": message, "sourceId": sourceId, "targetId": targetId});
  }

  void setMessage(String type, String message) {
    MessageModel messageModel = MessageModel(message: message, type: type);
    print(messages);
    setState(() {
      messages.add(messageModel);
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(elevation: 0,
        title: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => OtherProfile())),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                backgroundImage: AssetImage(
                  widget.user.imageUrl,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.user.name,
                style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              icon: Icon(

                CupertinoIcons.rectangle_on_rectangle_angled,size: 30,
                color: CupertinoColors.label,
              ),
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_) => AudioMessage()));
              }),
          IconButton(
              icon: Icon(
                CupertinoIcons.phone,
                color: Theme.of(context).buttonColor,
                size: 30,
              ),
              onPressed: () {}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton(
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
              child: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).buttonColor,
                ),

            ),
          ),
        ],
      ),
      body: WillPopScope(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: ListView.builder(

                  shrinkWrap: true,
                  reverse: false,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (messages[index].type == "source") {
                      return OwnMessageCard(
                        message: messages[index].message,
                      );
                    } else {
                      return ReplyCard(
                        message: messages[index].message,
                      );
                    }
                  },
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,

              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextFormField(
                          controller: _controller,
                          focusNode: focusNode,
                          style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .color),
                          decoration: InputDecoration(fillColor: Colors.grey.shade200,filled: true, enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(30)),
                            prefixIcon: IconButton(
                              icon: Icon(
                                show
                                    ? CupertinoIcons.keyboard
                                    : Icons.emoji_emotions_outlined,
                                color: show?Colors.grey.shade700:Colors.grey.shade700,
                                size: show?28:30,
                              ),
                              onPressed: () {
                                  focusNode.unfocus();
                                  focusNode.canRequestFocus = false;

                                setState(() {
                                  show = !show;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(30)),
                            suffixIcon: SizedBox(
                              width: 70,
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                          child: Icon(
                                              CupertinoIcons.camera,color: Colors.grey.shade700,)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 60.0,
                                        width: 60.0,
                                        child: PlayButton(
                                          initialIsPlaying: true,

                                          pauseIcon: Icon(
                                            CupertinoIcons.mic,
                                            color: Colors.black,
                                            size: 25,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            contentPadding: EdgeInsets.all(5),

                            hintText: "Node message",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() => _isTyping = true);
                            } else {
                              setState(() => _isTyping = false);
                            }
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 65,
                        width: 65,
                        child: FittedBox(
                          child: FloatingActionButton(elevation: 0,backgroundColor: Colors.blue.shade800,
                            onPressed: () {
                              if (_isTyping) {
                                sendMessage(_controller.text,
                                    widget.sourcechat.id, widget.user.id);
                                _controller.clear();
                              }
                            },
                            mini: true,
                            child: _isTyping ? Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Icon(CupertinoIcons.chevron_right,size: 20,),
                            ) : Icon(Icons.add),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                show ? emojiSelect() : Container(),
              ],
            ),
          ],
        ),
        onWillPop: (){
          if(show){
            setState(() {
              show= false;
            });
            
          }else
            {
              Navigator.pop(context);
            }
          return Future.value(false);
        },
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.camera_alt, Colors.pink, "Camera"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.headset, Colors.orange, "Audio"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.location_pin, Colors.teal, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.person, Colors.blue, "Contact"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emojiSelect() {
    return EmojiPicker(bgColor: Theme.of(context).primaryColor,indicatorColor: Theme.of(context).primaryColor,
        rows: 4,
        columns: 7,
        onEmojiSelected: (emoji, category) {
          print(emoji);
          setState(() {
            _controller.text = _controller.text + emoji.emoji;
          });
        });
  }

  iconCreation(IconData icons, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icons,
              // semanticLabel: "Help",
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
