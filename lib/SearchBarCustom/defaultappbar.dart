import 'package:blah/Settings/SettingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appPainter.dart';
import 'custom search.dart';

enum HomeMENU { Call, VideoCall, Status, Group, Mute, Delete }

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  _DefaultAppBarState createState() => _DefaultAppBarState();
}

class _DefaultAppBarState extends State<DefaultAppBar>
    with SingleTickerProviderStateMixin {
  double rippleStartX, rippleStartY;
  AnimationController _controller;
  Animation _animation;
  bool isInSearchMode = false;

  @override
  initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.addStatusListener(animationStatusListener);
  }

  animationStatusListener(AnimationStatus animationStatus) {
    if (animationStatus == AnimationStatus.completed) {
      setState(() {
        isInSearchMode = true;
      });
    }
  }

  void onSearchTapUp(TapUpDetails details) {
    setState(() {
      rippleStartX = details.globalPosition.dx;
      rippleStartY = details.globalPosition.dy;
    });

    print("pointer location $rippleStartX, $rippleStartY");
    _controller.forward();
  }

  cancelSearch() {
    setState(() {
      isInSearchMode = false;
    });

    onSearchQueryChange('');
    _controller.reverse();
  }

  onSearchQueryChange(String query) {
    print('search $query');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(children: [
      AppBar(elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: GestureDetector(
            onLongPress: () {
              _ProfilePic(context);
            },
            onTap: () => Navigator.push(
                context, CupertinoPageRoute(builder: (_) => Settings())),
            child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(
                  'images/greg.jpg',
                ),
                fit: BoxFit.fill,
              ),
            )),
          ),
        ),
        title: Text(
          "Nodes",
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 22,
            fontFamily: "SFPRO",
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).buttonColor,
              ),
            ),
            onTapUp: onSearchTapUp,
          ),
          PopupMenuButton(
            color: Theme.of(context).primaryColor,
            onSelected: (HomeMENU result) {
              setState(() {});
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<HomeMENU>>[
              const PopupMenuItem<HomeMENU>(
                value: HomeMENU.Call,
                child: Text(
                  'Call',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              const PopupMenuItem<HomeMENU>(
                value: HomeMENU.VideoCall,
                child: Text(
                  'Video Call',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              const PopupMenuItem<HomeMENU>(
                value: HomeMENU.Status,
                child: Text(
                  'Status Setting',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              const PopupMenuItem<HomeMENU>(
                value: HomeMENU.Group,
                child: Text(
                  'New Groupy',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              const PopupMenuItem<HomeMENU>(
                value: HomeMENU.Mute,
                child: Text(
                  'Mute Notification',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
              PopupMenuItem<HomeMENU>(
                value: HomeMENU.Delete,
                child: Text(
                  'Delete Chat',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ),
            ],
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).buttonColor,
              ),
            ),
          ),
        ],
      ),
      AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            painter: MyPainter(
              containerHeight: widget.preferredSize.height,
              center: Offset(rippleStartX ?? 0, rippleStartY ?? 0),
              radius: _animation.value * screenWidth,
              context: context,
            ),
          );
        },
      ),
      isInSearchMode
          ? (SearchBar(
              onCancelSearch: cancelSearch,
              onSearchQueryChanged: onSearchQueryChange,
            ))
          : (Container())
    ]);
  }
}

Future<void> _ProfilePic(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text('Edit profile picture'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Update'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
