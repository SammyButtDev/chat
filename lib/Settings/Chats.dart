import 'package:blah/Settings/Privacy.dart';
import 'package:flutter/material.dart';
class SettingChat extends StatefulWidget {
  @override
  _SettingChatState createState() => _SettingChatState();
}

class _SettingChatState extends State<SettingChat> {
  bool isprompt = false;
  bool issysemoji = false;
  bool iskeysend = false;
  bool isaddbook = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        title: Text("Chats",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(title:Text("Messages",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontWeight: FontWeight.bold,fontSize: 18)),),
              InkWell(onTap: (){
                CustomDialog(context, "Message font size","Small","Normal","large");
              },
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Message font size",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing:Text("Default",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Show invitation prompts",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text("Display invitation prompts for contacts without Armin",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),

                  trailing: Switch(
                    value: isprompt,
                    onChanged: (value) {
                      setState(() {
                        isprompt = value;
                      });
                    },
                  ),
                ),
              ),  InkWell(onTap: (){},
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Use system Emoji",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text("Disable Armin's built-in emoji support",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),

                  trailing: Switch(
                    value: issysemoji,
                    onChanged: (value) {
                      setState(() {
                        issysemoji = value;
                      });
                    },
                  ),
                ),
              ),  InkWell(onTap: (){},
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Enter key sends",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text("pressing the Enter key will send text messages",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),

                  trailing: Switch(
                    value: iskeysend,
                    onChanged: (value) {
                      setState(() {
                        iskeysend = value;
                      });
                    },
                  ),
                ),
              ),  InkWell(onTap: (){},
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Use address book photos",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text("Display contact photos from your address book if available",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                  trailing: Switch(
                    value: isaddbook,
                    onChanged: (value) {
                      setState(() {
                        isaddbook= value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
