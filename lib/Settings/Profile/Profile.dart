import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About.dart';
import 'YourName.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Profile",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.grey,
            ),
            InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => YourName())),
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "User",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "Your name",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                )),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AboutUser())),
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.pen,
                  color: Colors.grey,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Write a few words about yourself",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            ListTile(
              title: Text(
                "Your profile is end-to-end encrypted.Your profile and changes too it will be visible to your contacts,when you initiate or accept new conversation,and when you join new groups.",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
