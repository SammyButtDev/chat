import 'package:blah/ChatHolder/Chat_holder.dart';
import 'package:blah/Screens/CallLogScreen.dart';
import 'package:blah/Settings/SettingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum HomeMENU { Call, VideoCall, Status, Group, Mute, Delete }

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _searching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            splashColor: CupertinoColors.activeBlue,
            heroTag: "camera",
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          FloatingActionButton(
            heroTag: "text",
            onPressed: () {},
            backgroundColor: CupertinoColors.activeBlue,
            child: Icon(
              CupertinoIcons.pen,size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: GestureDetector(onLongPress:(){ _ProfilePic(context);},
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => Settings())),
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
        title: SearchBar(isSearching: _searching),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).buttonColor,
            ),
            onPressed: () {
              setState(() {
                _searching =! _searching;
              });
            } ,
          ),
          SizedBox(
            width: 10,
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
      body: Column(
        children: [
          ChatHolder(),
        ],
      ),
    );
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
class SearchBar extends StatelessWidget {
  final bool isSearching;
  SearchBar({@required this.isSearching});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimateExpansion(
          animate: !isSearching,
          axisAlignment: 1.0,
          child: Text("Nodes",style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 22,
            fontFamily: "SFPRO",
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),),
        ),
        AnimateExpansion(
          animate: isSearching,
          axisAlignment: -1.0,
          child: Search(),
        ),
      ],
    );
  }
}
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search for...',
        hintStyle: TextStyle(
          fontSize: 20,
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
      ),
    );
  }
}
class AnimateExpansion extends StatefulWidget {
  final Widget child;
  final bool animate;
  final double axisAlignment;
  AnimateExpansion({
    this.animate = false,
    this.axisAlignment,
    this.child,
  });

  @override
  _AnimateExpansionState createState() => _AnimateExpansionState();
}

class _AnimateExpansionState extends State<AnimateExpansion>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  void prepareAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInCubic,
      reverseCurve: Curves.easeOutCubic,
    );
  }

  void _toggle() {
    if (widget.animate) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _toggle();
  }

  @override
  void didUpdateWidget(AnimateExpansion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _toggle();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axis: Axis.horizontal,
        axisAlignment: -1.0,
        sizeFactor: _animation,
        child: widget.child);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

