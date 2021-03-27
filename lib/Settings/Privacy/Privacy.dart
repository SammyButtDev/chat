import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Blocked.dart';
import 'NewPIn.dart';
import '../SettingScreen.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool PScreenLock = false;
  bool PScreensecurity = false;
  bool PScreenkeyboard = false;
  bool PComCalls = false;
  bool PComReceipt = false;
  bool PComindicator = false;
  bool PComlinkPreview = false;
  bool PSealIndi = false;
  bool PSealAllow = false;
  bool PPInReg = false;
  bool PPINred = false;
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
                  "App access",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
              ),
              InkWell(
                onTap: () {},
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
              InkWell(
                onTap: () {},
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
              InkWell(
                onTap: () {},
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
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "incognito keyboard",
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
              InkWell(
                onTap: () {},
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
              ListTile(
                title: Text(
                  "Communication",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Always relay calls",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Relay all calls through the Node server to avoid revealing your IP address to your contact.Enabling will reduce call quality.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PComCalls,
                    onChanged: (value) {
                      setState(() {
                        PComCalls = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Read Reciept",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "if read reciepts are disabled, you won't be able to see read receipts from other",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PComReceipt,
                    onChanged: (value) {
                      setState(() {
                        PComReceipt = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Typing indicators",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "if typing indicators are disabled,you won't be able to see typing indicators from others",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PComindicator,
                    onChanged: (value) {
                      setState(() {
                        PComindicator = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Generate link previews",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Retrieve link previews directly from websites for messages you send",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PComlinkPreview,
                    onChanged: (value) {
                      setState(() {
                        PComlinkPreview = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Blocked())),
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Blocked users",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 10,
              ),
              ListTile(
                title: Text(
                  "Sealed Sender",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Display Indicators",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "show a status icon when you select Messages details on messages that were delivered using sealed sender",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PSealIndi,
                    onChanged: (value) {
                      setState(() {
                        PSealIndi = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Allow from anyone",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Enable sealed sender for incoming messages from non-contacts and people with whom you have not shared your profile.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PSealAllow,
                    onChanged: (value) {
                      setState(() {
                        PSealAllow = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                splashColor: CupertinoColors.activeBlue,
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.arrow_up_doc_fill,
                    color: Theme.of(context).buttonColor,
                  ),
                  title: Text(
                    "Learn more",
                    style: TextStyle(color: CupertinoColors.activeBlue),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 10,
              ),
              ListTile(
                title: Text(
                  "Signal PIN",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => NewPin())),
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Change you PIN",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "PINs keep information stored with Nodes encrypted so only you can access it.Your profile,settings,and contacts will restore when you reinstall Nodes.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "PIN reminders",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Reminders help you remember your PIN since it can't be recovered.You'll be asked less frenquently over time.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PPINred,
                    onChanged: (value) {
                      setState(() {
                        PPINred = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Registration Lock",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Add extra security by requiring your Nodes PIN to register your phone number with Node again.",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  trailing: Switch(
                    value: PPInReg,
                    onChanged: (value) {
                      setState(() {
                        PPInReg = value;
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
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                )),
          ],
        );
      });
}
