import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteAcc extends StatefulWidget {
  @override
  _DeleteAccState createState() => _DeleteAccState();
}

class _DeleteAccState extends State<DeleteAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Delete account",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.warning_amber_sharp,
                color: CupertinoColors.destructiveRed,
                size: 45,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deleting your account will:",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "• Delete your account info and profile photo",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 20),
                  ),
                  Text(
                    "• Delete all your messages",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                "Enter your phone number",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Icons.add,color: Colors.grey,),focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CupertinoColors.activeBlue,),
                        ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        validator: (String val) {
                          if (val.isEmpty)
                            return 'enter Phone number';
                          else
                            return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CupertinoColors.activeBlue,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                            ),
                            gapPadding: 5,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            color:CupertinoColors.activeBlue,
                            fontWeight: FontWeight.w400
                          ),
                          hintText: 'Phone number',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},

                  child: Text(
                    "Delete account",
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                  style:ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 160,vertical: 22),
                    primary: CupertinoColors.destructiveRed,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
