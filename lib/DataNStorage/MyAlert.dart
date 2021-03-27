import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter {
  Everyone,
  Contacts,
  Me,
}

class MyAlert extends StatefulWidget {
  final title, tab1, tab2, tab3, tab4;

  const MyAlert({
    Key key,
    @required this.title,
    @required this.tab1,
    @required this.tab2,
    @required this.tab3,
    @required this.tab4,
  }) : super(key: key);

  @override
  _MyAlertState createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  bool istrue= false;
  @override
  Widget build(BuildContext context) {
    SingingCharacter _character = SingingCharacter.Everyone;

    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        widget.title,
        style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              widget.tab1,
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            leading:Checkbox(value: istrue,onChanged: (value){
              setState(() {
                istrue=value;
              });
            },
            ),
          ),
          ListTile(
            title: Text(
              widget.tab2,
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            leading: Radio(
                value: SingingCharacter.Contacts,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  return _character = value;
                }),
          ),
          ListTile(
            title: Text(
              widget.tab3,
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            leading: Radio(
                value: SingingCharacter.Me,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  return _character = value;
                }),
          ),
          ListTile(
            title: Text(
              widget.tab4,
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            leading: Radio(
                value: SingingCharacter.Me,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  return _character = value;
                }),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancel",
              style: TextStyle(color: CupertinoColors.activeBlue),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              "ok",
              style: TextStyle(color: CupertinoColors.activeBlue),
            )),
      ],
    );
  }
}
