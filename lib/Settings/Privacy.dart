import 'package:blah/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SettingScreen.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool PScreenLock = false;
  bool PScreensecurity = false;
  bool PScreenkeyboard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(
              context, MaterialPageRoute(builder: (_) => Settings())),
          icon: Icon(
            Icons.keyboard_backspace_outlined,
            color: Theme.of(context).buttonColor,
          ),
        ),
        title: Text(
          "Privacy",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        titleSpacing: 0.5,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "App acess",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Screen lock",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Lock Nodes access with Android screen lock on fingerprint",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PScreensecurity,
                    onChanged: (value) {
                      setState(() {
                        PScreensecurity = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Screen lock inactivity timeout",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "None",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Screen security",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Block screenshots in the recents list and inside the app",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PScreenLock,
                    onChanged: (value) {
                      setState(() {
                        PScreenLock = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Sincognito keyboard",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Request keyboard to disable personalized learning.This setting is not a guarantee,and your keyboard may ignore it.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PScreenkeyboard,
                    onChanged: (value) {
                      setState(() {
                        PScreenkeyboard = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Learn more",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                  ),
                ),
                  leading: Icon(Icons.keyboard),
              ),
              ),
              Divider(
                color: Colors.grey.shade100,
                thickness: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum SingingCharacter {
  Everyone,
  Contacts,
  Me,
}

Future<void> CustomDialog(context, title, tab1, tab2, tab3) {
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
            ],
          ),
        );
      });
}
