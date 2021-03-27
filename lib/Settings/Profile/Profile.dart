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
              child: Center(
                child: Stack(
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        settingModalBottomSheet(context);
                      });
                    },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.white,width: 2),
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.person_outline_outlined,
                          size: 90,
                        )),
                      ),
                    ),
                    Positioned(bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,boxShadow: [BoxShadow(
                        spreadRadius: 2,offset: Offset(0,1),
                        color: Colors.black.withOpacity(0.1),
                      ),],
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    )),
                  ],
                ),
              ),
            ),
            InkWell(
                onTap: () => Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => YourName())),
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
                  context, CupertinoPageRoute(builder: (_) => AboutUser())),
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
settingModalBottomSheet(context,){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){

        return Container(
          child: new Wrap(
            children: <Widget>[
              ListTile(
                  title: new Text('Choose photo'),
              ),
              new ListTile(
                  leading: new Icon(Icons.camera_alt_outlined),
                  title: new Text('Take photo'),
                  onTap: () => {}
              ),
              new ListTile(
                  leading: new Icon(CupertinoIcons.photo),
                  title: new Text('Block'),
                  onTap: () => {}
              ),
              new ListTile(
                leading: new Icon(CupertinoIcons.delete),
                title: new Text('View safety number'),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}
