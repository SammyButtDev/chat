import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedDevices extends StatefulWidget {
  @override
  _LinkedDevicesState createState() => _LinkedDevicesState();
}

class _LinkedDevicesState extends State<LinkedDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: CupertinoColors.activeBlue,
        onPressed: () {  },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text("Linked devices"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Center(
                      child: Text(
                    "No device linked",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
