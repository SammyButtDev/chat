import 'package:blah/Screens/ChatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';


class Chat_page extends StatefulWidget {
  @override
  _Chat_pageState createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return Column(
              children: [
                InkWell(
                  splashColor: Colors.blue,
                  onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: chat.sender,
                      ),
                    ),),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0),
                    child: ListTile(
                      hoverColor: Colors.blue,
                      leading: InkWell(onTap:(){
                        setState(() {
                          settingModalBottomSheet(context,index);
                        });
                      },
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: AssetImage(
                            chat.sender.imageUrl,
                          ),
                        ),
                      ),
                      title: Text(
                        chats[index].sender.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                      subtitle: Text(chats[index].text,style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 14,
                        fontWeight: chat.unread?FontWeight.bold:FontWeight.normal,
                      ),),
                      trailing: Column(
                        children: [
                          Text(chat.time,style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight:  chat.unread?FontWeight.bold:FontWeight.normal,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
settingModalBottomSheet(context,index){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        final Message chat = chats[index];

        return Container(
          color: Theme.of(context).primaryColor,
          child: new Wrap(
            children: <Widget>[Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: AssetImage(
                      chat.sender.imageUrl,
                    ),
                  ),
                  SizedBox(height: 3,),
                  Text(chat.sender.name,style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                  Text("+xx xxx xxxxxxx",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: Icon(CupertinoIcons.conversation_bubble,color: CupertinoColors.activeBlue,), onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: chat.sender,
                          ),
                        ),), ),
                      SizedBox(width: 20,),
                      IconButton(icon: Icon(CupertinoIcons.video_camera,size: 32,color: CupertinoColors.activeBlue,), onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: chat.sender,
                          ),
                        ),), ),
                      SizedBox(width: 20,),
                      IconButton(icon: Icon(CupertinoIcons.phone,color: CupertinoColors.activeBlue,), onPressed:()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: chat.sender,
                          ),
                        ),), ),
                    ],
                  ),
                ],
              ),
            ),

              new ListTile(
                  leading: new Icon(Icons.block_outlined,color: Theme.of(context).buttonColor,),
                  title: new Text('Block',style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                  onTap: () => {}
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline_rounded,color: Theme.of(context).buttonColor,),
                title: new Text('View safety number',style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color)),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}

