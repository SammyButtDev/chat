import 'package:blah/Screens/ChatScreen.dart';
import 'package:blah/constant.dart';
import 'package:flutter/material.dart';


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
                  child: ListTile(
                    hoverColor: Colors.blue,
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: AssetImage(
                        chat.sender.imageUrl,
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
                    ),),
                    trailing: Column(
                      children: [
                        Text(chat.time,style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),),
                        SizedBox(
                          height: 3,
                        ),
                        chat.unread
                            ? Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: chat.unread
                                ? Colors.green.shade300
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text('1',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
