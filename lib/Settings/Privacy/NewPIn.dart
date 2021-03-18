import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewPin extends StatefulWidget {
  @override
  _NewPinState createState() => _NewPinState();
}

class _NewPinState extends State<NewPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
            ),
           Text("Create a new PIN",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontSize: 30,fontWeight: FontWeight.w700),),
            SizedBox(
              height: 12,
            ),
            Text("You can change your PIN as long as this device is registered.",style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontSize: 18,),),
            SizedBox(height: 25,),
            TextFormField(textAlign: TextAlign.center,),
            SizedBox(
              height: 10,
            ),
            Expanded(child: Text("PIN must be at least 4 digits")),
            Text("Create ALPHANUMERIC PIN",style: TextStyle(color:CupertinoColors.activeBlue),),
            SizedBox(height: 12,),
            ElevatedButton(
              onPressed: () {},

              child: Text(
                "Next",
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
              style:ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 180,vertical: 22),
                primary: CupertinoColors.activeBlue,
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
