import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  bool Convotones = false;
  bool sound =false;
  bool vibrate = false;
  bool Callvibrate = false;
  bool MNotif = false;
  bool CallNotif = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Notifications",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),elevation: 0,),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(title:Text("Messages",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontWeight: FontWeight.bold,fontSize: 18)),),
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
                  value: MNotif,
                  onChanged: (value) {
                    setState(() {
                      MNotif = value;
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
                  value: Convotones,
                  onChanged: (value) {
                    setState(() {
                      Convotones = value;
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
            ListTile(title:Text("Calls",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontWeight: FontWeight.bold,fontSize: 18)),),
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Notifications",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: CallNotif,
                  onChanged: (value) {
                    setState(() {
                      CallNotif = value;
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
                  value: Callvibrate,
                  onChanged: (value) {
                    setState(() {
                      Callvibrate = value;
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
                trailing:Text("Default",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),

            Divider(
              color: Theme.of(context).dividerColor,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
