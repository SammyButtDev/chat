import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool convotones = false;
  bool sound =false;
  bool vibrate = false;
  bool callvibrate = false;
  bool mNotif = false;
  bool callNotif = false;
  bool eventNotif = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Notifications",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),elevation: 0,),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(title:Text("Messages",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold,fontSize: 18)),),
            SizedBox(height: 8,),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Notifications",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text("Play sounds for incoming and outgoing messages."),
                trailing: Switch(
                  value: mNotif,
                  onChanged: (value) {
                    setState(() {
                      mNotif = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Coversation tones",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text("Play sounds for incoming and outgoing messages."),
                trailing: Switch(
                  value: convotones,
                  onChanged: (value) {
                    setState(() {
                      convotones = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Sound",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: sound,
                  onChanged: (value) {
                    setState(() {
                      sound = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Vibrate",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: vibrate,
                  onChanged: (value) {
                    setState(() {
                      vibrate = value;
                    });
                  },
                ),
              ),
            ),
            Divider(color: Colors.grey.shade100,thickness: 10,),
            ListTile(title:Text("Calls",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold,fontSize: 18)),),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Notifications",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: callNotif,
                  onChanged: (value) {
                    setState(() {
                      callNotif = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Vibrate",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: callvibrate,
                  onChanged: (value) {
                    setState(() {
                      callvibrate = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Ringtone",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing:Text("Default",style: TextStyle(color: CupertinoColors.activeBlue),),
              ),
            ),

            Divider(
              color: Colors.grey.shade100,
              thickness: 10,
            ),
            ListTile(title:Text("Events",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold,fontSize: 18)),),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Contact joined Nodes",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: eventNotif,
                  onChanged: (value) {
                    setState(() {
                      eventNotif = value;
                    });
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
