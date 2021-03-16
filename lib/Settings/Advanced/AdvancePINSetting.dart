import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancePinSettings extends StatefulWidget {
  @override
  _AdvancePinSettingsState createState() => _AdvancePinSettingsState();
}

class _AdvancePinSettingsState extends State<AdvancePinSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advanced PIN Settings",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(onTap: (){},
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "Disable PIN",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  subtitle: Text(
                    "if you disable the PIN,you will lose all data when you re-register Nodes unless you manually back up and restore.You can not turn on Registration Lock while PIN is disabled",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
