import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUser extends StatefulWidget {
  @override
  _AboutUserState createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: CupertinoColors.activeBlue,
        isExtended: true,
        label: Text("Save"),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Theme.of(context).primaryColor,
        title: Text("About",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.emoji_emotions_outlined), onPressed: (){},splashColor: CupertinoColors.activeBlue,),
                Expanded(child: TextFormField()),
                IconButton(icon: Icon(Icons.close), onPressed: (){},splashColor:  CupertinoColors.activeBlue,),
              ],
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/hello.png")),
                title: Text("Speak freely",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/silence.png")),
                title: Text("Encrypted",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/hand.png")),
                title: Text("Be kind",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/coffee.png")),
                title: Text("coffee lover",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/thumbsup.png")),
                title: Text("free to chat",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/nomobile.png")),
                title: Text("taking a break",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: ImageIcon(AssetImage("images/about/rocket.png")),
                title: Text("Working on something new",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
