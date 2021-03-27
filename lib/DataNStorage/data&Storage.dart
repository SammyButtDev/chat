import 'package:blah/DataNStorage/MyAlert.dart';
import 'package:blah/DataNStorage/UseProxy.dart';
import 'package:blah/Settings/Privacy/Privacy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataNStorage extends StatefulWidget {
  @override
  _DataNStorageState createState() => _DataNStorageState();
}

class _DataNStorageState extends State<DataNStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Data and Storage",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Manage storage",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "200.9 kB",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 10,
            ),
            ListTile(
              title: Text(
                "Media auto-download",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                FTIleCustomDialog(
                    context, "When roaming", "Images", "Audio", "Video","Document");
              },
              child: ListTile(
                title: Text(
                  "When using mobile data",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Images,Audio",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                FTIleCustomDialog(
                    context, "When roaming", "Images", "Audio", "Video","Document");
              },
              child: ListTile(
                title: Text(
                  "When using Wi-Fi",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Images,Audio,Video,Documents",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                FTIleCustomDialog(
                    context, "When roaming", "Images", "Audio", "Video","Document");
              },
              child: ListTile(
                title: Text(
                  "When roaming",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "None",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 10,
            ),
            ListTile(
              title: Text(
                "Calls",
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                CustomDialog(context, "Use less data for calls", "Never",
                    "cellular only", "Wifi and cellular");
              },
              child: ListTile(
                title: Text(
                  "Use less data for calls",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Never",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Using less data may improve calls on bad networks",
                  style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),
            ListTile(
              title: Text(
                "Proxy",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => UseProxy())),
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                title: Text(
                  "Use Proxy",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Off",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}



 FTIleCustomDialog(context, title, tab1, tab2, tab3,tab4) {
  // SingingCharacter _character = SingingCharacter.Everyone;
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return MyAlert(title: title, tab1: tab1, tab2: tab2, tab3: tab3, tab4: tab4);
      });
}