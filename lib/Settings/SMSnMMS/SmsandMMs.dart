import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SMMs extends StatefulWidget {
  @override
  _SMMsState createState() => _SMMsState();
}

class _SMMsState extends State<SMMs> {
  bool delivery = false;
  bool mode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('SMS and MMS'),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            InkWell(
              splashColor: CupertinoColors.activeBlue,
              onTap: () {},
              child: ListTile(
                title: Text(
                  "SMS Disabled",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Touch to make Nodes your default SMS app",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            InkWell(
              splashColor: CupertinoColors.activeBlue,
              onTap: () {},
              child: ListTile(
                title: Text(
                  "SMS delivery reports",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Request a delivery report for each SMS message you send",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: delivery,
                  onChanged: (value) {
                    setState(() {
                      delivery = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(
              splashColor: CupertinoColors.activeBlue,
              onTap: () {},
              child: ListTile(
                title: Text(
                  "\'WIFI Calling \' compatibility mode",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Enable if your device uses SMS/MMS delivery over WIFI (only enable when \'Wifi Calling\' is enabled on your device)",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                trailing: Switch(
                  value: mode,
                  onChanged: (value) {
                    setState(() {
                      mode = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
