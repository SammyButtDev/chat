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
                Expanded(child: TextFormField(
                  decoration: InputDecoration(hintText: "Write a few words about yourself...",hintStyle: TextStyle(color: Colors.grey.shade200)),
                )),
                IconButton(icon: Icon(Icons.close), onPressed: (){},splashColor:  CupertinoColors.activeBlue,),
              ],
            ),
            SizedBox(height: 3,),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: CircleAvatar(child: Image.asset("images/hello.png"),backgroundColor: Colors.transparent,),
                title: Text("Speak freely",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading:  CircleAvatar(child: Image.asset("images/silence.png"),backgroundColor: Colors.transparent,),
                title: Text("Encrypted",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: CircleAvatar(child: Image.asset("images/hand.png"),backgroundColor: Colors.transparent,),
                title: Text("Be kind",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading:  CircleAvatar(child: Image.asset("images/coffee.png"),backgroundColor: Colors.transparent,),
                title: Text("coffee lover",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: CircleAvatar(child: Image.asset("images/thumbsup.png"),backgroundColor: Colors.transparent,),
                title: Text("free to chat",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading:  CircleAvatar(child: Image.asset("images/nomobile.png"),backgroundColor: Colors.transparent,),
                title: Text("taking a break",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                leading: CircleAvatar(child: Image.asset("images/rocket.png"),backgroundColor: Colors.transparent,),
                title: Text("Working on something new",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
