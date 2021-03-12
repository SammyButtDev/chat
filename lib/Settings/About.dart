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
          ],
        ),
      ),
    );
  }
}
