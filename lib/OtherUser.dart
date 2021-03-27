import 'package:blah/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherProfile extends StatefulWidget {
  final User user;

  const OtherProfile({Key key, this.user}) : super(key: key);
  @override
  _OtherProfileState createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {
  bool _muteNotif = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.lime,
            expandedHeight: 250,
            floating: true,
            snap: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.user.name),

            ),
          ),
          SliverFillRemaining(
            child:
            Container(
              child: Column(
                children: [
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "This person is in your contacts",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                      trailing: Icon(
                        Icons.account_circle_outlined,
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "Disappearing messages",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                      trailing: Text(
                        "Off",
                        style: TextStyle(
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text("Mute notifications",
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1.color)),
                      trailing: Switch(
                          value: _muteNotif,
                          onChanged: (value) {
                            setState(() {
                              _muteNotif = value;
                            });
                          }),
                    ),
                  ),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "Custom notification",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                      trailing: Text(
                        "Off",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                    ),
                  ),
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                        title: Text(
                          "Shared media",
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1.color),
                        ),
                        trailing: Text(
                          "See all",
                          style: TextStyle(color: CupertinoColors.activeBlue),
                        )),
                  ),
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "Chat color",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                      trailing: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "Chat wallpaper",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ),
                  ),
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "No groups in common",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ),
                  ),
                  Divider(thickness: 8,color: Colors.grey.shade300,),
                  InkWell(onTap: (){},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "View safety number",
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
                          "Block",
                          style: TextStyle(color: CupertinoColors.systemRed),
                        ),
                      )),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
