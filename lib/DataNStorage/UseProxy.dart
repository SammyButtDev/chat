import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UseProxy extends StatefulWidget {
  @override
  _UseProxyState createState() => _UseProxyState();
}

class _UseProxyState extends State<UseProxy> {
  bool isProxy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: CupertinoColors.activeBlue,
        isExtended: true,
        label: Text("Save"),
      ),
      appBar: AppBar(
        title: Text("Use Proxy",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
        elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Use Proxy",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              subtitle: Text("Only use a proxy if you're not able to connect to Nodes on cellular or Wi-fi.",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
              trailing: Switch(value: isProxy, onChanged: (value){
                setState(() {
                  isProxy=value;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Proxy address",style: TextStyle(color: CupertinoColors.activeBlue),),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:("Enter proxy address"),
                      hintStyle: TextStyle(color: Colors.grey.shade200),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
