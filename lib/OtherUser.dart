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
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _OtherProfileHeader(),
            pinned: true,
            floating: true,
          ),
          SliverFillRemaining(
            child: Container(
              child: Column(
                children: [
                  Divider(
                    thickness: 8,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {},
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
                  Divider(
                    thickness: 8,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {},
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
                    onTap: () {},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text("Mute notifications",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color)),
                      trailing: Switch(
                          value: _muteNotif,
                          onChanged: (value) {
                            setState(() {
                              _muteNotif = value;
                            });
                          }),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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
                  Divider(
                    thickness: 8,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                        title: Text(
                          "Shared media",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                        ),
                        trailing: Text(
                          "See all",
                          style: TextStyle(color: CupertinoColors.activeBlue),
                        )),
                  ),
                  Divider(
                    thickness: 8,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {},
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
                  InkWell(
                    onTap: () {},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "Chat wallpaper",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 8,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: CupertinoColors.activeBlue,
                    child: ListTile(
                      title: Text(
                        "No groups in common",
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

const _maxHeaderExtent = 280.0;
const _minHeaderExtent = 80.0;
const _maxAvatarHeight = 150.0;
const _minAvatarHeight = 40.0;
const _maxOtherUserName = 25.0;
const _minOtherUserName = 16.0;
const _maxleft=150.0;
const _minleft =35.0;


class _OtherProfileHeader extends SliverPersistentHeaderDelegate  {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxHeaderExtent;
    final size = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final CurrentAvatarSize = (_maxAvatarHeight * (1 - percent))
        .clamp(_minAvatarHeight, _maxAvatarHeight);
    // ignore: non_constant_identifier_names
    final OtherUserName = (_maxOtherUserName *
        (1 - percent)).clamp(_minOtherUserName, _maxOtherUserName);
    final left = (_maxleft *
        (1 - percent)).clamp(_minleft, _maxleft);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Stack(
        children: [

          Positioned(
            left: size / 5,
            top: 30.0,
            height: _maxAvatarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Other User Name",
                  style: TextStyle(fontSize: OtherUserName),
                ),
              ],
            ),
          ),

          Positioned(
            child: ClipOval(
              child: Image.asset(
                'images/greg.jpg',
              ),
            ),
            bottom: 20.0,
            left:left,
            height: CurrentAvatarSize,
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => _maxHeaderExtent;

  @override
  double get minExtent => _minHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
