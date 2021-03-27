import 'package:blah/Settings/Advanced/AdvancePINSetting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DeleteAccount.dart';

class Advanced extends StatefulWidget {
  @override
  _AdvancedState createState() => _AdvancedState();
}

class _AdvancedState extends State<Advanced> {
  bool advancedMnC = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Advanced",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            InkWell(onTap: (){},
              splashColor: Colors.blue,
              child: ListTile(
                title: Text(
                  "Signal messages and calls",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text("xx xxx xxxxxxx",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                trailing: Switch(
                  value: advancedMnC,
                  onChanged: (value) {
                    setState(() {
                      advancedMnC= value;
                    });
                  },
                ),
              ),
            ),
            InkWell(onTap: () => Navigator.push(
                context, CupertinoPageRoute(builder: (_) => AdvancePinSettings())),
            splashColor: CupertinoColors.activeBlue,
            child: ListTile(
            title: Text("Advanced PIN settings",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
            ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                title: Text("Submit debug log",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                subtitle:Text("Nodes 1.1.0",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 10,
            ),
            InkWell(onTap:() => Navigator.push(
                context, CupertinoPageRoute(builder: (_) => DeleteAcc())),
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                title: Text("Delete account",style: TextStyle(color: CupertinoColors.systemRed),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
