import 'package:blah/Settings/Chats/chatsbackup.dart';
import 'package:blah/Settings/Privacy/Privacy.dart';
import 'package:flutter/cupertino.dart';
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
              ListTile(title:Text("Messages",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold,fontSize: 18)),),
              InkWell(onTap: (){
                chatCustomDialog(context, "Message font size","Small","Normal","large","Extra large");
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
              ),
              InkWell(onTap: (){},
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
              Divider(
                color: Colors.grey.shade200,
                thickness: 10,
              ),
              ListTile(title:Text("Backups",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold,fontSize: 18)),),
              InkWell(onTap: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => ChatBackups())),
                splashColor: Colors.blue,
                child: ListTile(
                  title: Text(
                    "Chat backups",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text("backup chats to external storage",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

enum Character {
  Everyone,
  Contacts,
  Me,
  other,
}

Future<void> chatCustomDialog(context, title, tab1, tab2, tab3,tab4) {


  SingingCharacter _character = SingingCharacter.Everyone;
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            title,
            style:
            TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  tab1,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                leading: Radio(
                    value: SingingCharacter.Everyone,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      return _character = value;
                    }),
              ),
              ListTile(
                title: Text(
                  tab2,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                leading: Radio(
                    value: SingingCharacter.Contacts,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      return _character = value;
                    }),
              ),
              ListTile(
                title: Text(
                  tab3,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                leading: Radio(
                    value: SingingCharacter.Me,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      return _character = value;
                    }),
              ),
              ListTile(
                title: Text(
                  tab4,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                leading: Radio(
                    value: SingingCharacter.Me,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      return _character = value;
                    }),
              ),
            ],
          ),
          actions: [TextButton(onPressed:  () {
          Navigator.of(context).pop(); },child: Text("Cancel",style: TextStyle(color: CupertinoColors.activeBlue),))],
        );
      });
}

