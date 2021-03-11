import 'package:blah/constant.dart';
import 'package:flutter/material.dart';

import 'SettingScreen.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(
              context, MaterialPageRoute(builder: (_) => Settings())),
          icon: Icon(
            Icons.keyboard_backspace_outlined,
            color: Theme.of(context).buttonColor,
          ),
        ),
        title: Text(
          "Privacy",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        titleSpacing: 0.5,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who can see my personal info",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "if you don't share your last seen, you wont be able to see other people's \nLast seen",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              CustomContainer(context, "Last seen", "My contacts", () {
                CustomDialog(context,"Last Seen","Everyone","Only Contacts","Only me");
              }),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              CustomContainer(context, "Profile Photo", "My contacts", () {
                CustomDialog(context,"Profile Photo","Everyone","Only Contacts","Only me");
              }),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              CustomContainer(context, "About", "My contacts", () {
                CustomDialog(context,"About","Everyone","Only Contacts","Only me");
              }),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              CustomContainer(context, "Status", "My contacts", () {
                CustomDialog(context,"Status","Everyone","Only Contacts","Only me");
              }),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              CustomContainer(context, "Screen lock", "Off", () {
                CustomDialog(context,"Screen lock","On","Off","Never");
              }),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
enum SingingCharacter { Everyone, Contacts,Me,}

Future<void> CustomDialog(context,title,tab1,tab2,tab3) {
  SingingCharacter _character = SingingCharacter.Everyone;
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            title,
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(tab1, style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                leading: Radio(value: SingingCharacter.Everyone, groupValue:  _character, onChanged: (SingingCharacter value){
                  return _character = value;
                }),
              ),
              ListTile(
                title: Text(tab2, style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                leading: Radio(value: SingingCharacter.Contacts, groupValue:  _character, onChanged: (SingingCharacter value){
                  return _character = value;
                }),
              ),
              ListTile(
                title: Text(tab3, style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),),
                leading: Radio(value: SingingCharacter.Me, groupValue:  _character, onChanged: (SingingCharacter value){
                  return _character = value;
                }),
              ),
            ],
          ),
        );
      });
}
