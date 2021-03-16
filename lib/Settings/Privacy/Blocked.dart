import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blocked extends StatefulWidget {
  @override
  _BlockedState createState() => _BlockedState();
}

class _BlockedState extends State<Blocked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blocked users",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            InkWell(onTap: (){},
              splashColor: CupertinoColors.activeBlue,
              child: ListTile(
                title: Text(
                  "Add blocked user",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
                subtitle: Text(
                  "Blocked users will not be able to call you or send you messages.",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
            ),
            ListTile(
              title: Text("Blocked users",style: TextStyle(color: CupertinoColors.activeBlue),),
            ),
            SingleChildScrollView(

              child: Container(
                child: Center(child: Text("No blocked users",style: TextStyle(color: Colors.grey.shade400),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
