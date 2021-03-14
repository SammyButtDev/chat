import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourName extends StatefulWidget {
  @override
  _YourNameState createState() => _YourNameState();
}

class _YourNameState extends State<YourName> {
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
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
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text("Your name",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TextFormField(focusNode: nodeOne,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
                decoration: InputDecoration(
                  hintText: "First Name",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                ),
              ),
              TextFormField(focusNode: nodeTwo,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
                decoration: InputDecoration(
                  hintText: "Last Name(Optional)",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
