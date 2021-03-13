import 'package:blah/Providers/ThemeProvider.dart';
import 'package:blah/Screens/HomeScreen.dart';
import 'package:blah/Settings/Chats.dart';
import 'package:blah/Settings/Help.dart';
import 'package:blah/Settings/Privacy.dart';
import 'package:blah/Settings/Profile.dart';
import 'package:blah/Settings/data&Storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blah/constant.dart';
import 'package:provider/provider.dart';
import 'Advanced.dart';
import 'LinkedDevices.dart';
import 'SmsandMMs.dart';
import 'notifcation.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace_outlined,
            color: Theme.of(context).buttonColor,
          ),
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (_) => HomeScreen(),
            ),
          ),
        ),
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => Profile())),
                splashColor: CupertinoColors.activeBlue,
                child: ListTile(
                  title: Text(
                    "User",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color,
                    ),
                  ),
                  subtitle:Text(
                    "+00 000 0000000",
                    style: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .color),
                  ),
                  leading:CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('images/greg.jpg'),
                  ) ,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SMMs())),
                    splashColor: Colors.blue,
                    child: ListTile(
                      leading: Icon(
                      CupertinoIcons.conversation_bubble,
                        color: Theme.of(context).buttonColor,
                      ),
                      title: Text(
                        'SMS and MMS',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Off',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => notification())),
                    splashColor: Colors.blue,
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications_none_outlined,
                        color: Theme.of(context).buttonColor,
                      ),
                      title: Text(
                        'Notification',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Off',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ),
                  ), //SMS
                  InkWell(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Privacy())),
                    splashColor: Colors.blue,
                    child: ListTile(
                      leading: Icon(
                        Icons.lock_outline,
                        color: Theme.of(context).buttonColor,
                      ),
                      title: Text(
                        'Privacy',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Screen lock off',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ),
                  ), //Privacy
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.blue,
                    child: ListTile(
                      leading: Icon(
                        Icons.wb_sunny_outlined,
                        color: Theme.of(context).buttonColor,
                      ),
                      title: Text(
                        "Dark Theme",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Switch(
                        value: themeChange.isLight,
                        onChanged: (bool value) {
                          if (!themeChange.isLight)
                            themeChange.setTheme(true);
                          else
                            themeChange.setTheme(false);
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SettingChat())),
                    child: ListTile(
                      focusColor: Colors.blue,
                      leading: Icon(Icons.image_outlined,
                          color: Theme.of(context).buttonColor),
                      title: Text(
                        'Chats',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DataNStorage())),
                    child: ListTile(
                      leading: Icon(Icons.inbox,
                          color: Theme.of(context).buttonColor),
                      title: Text(
                        'Data and Storage',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LinkedDevices())),
                    child: ListTile(
                      leading: Icon(CupertinoIcons.rectangle_on_rectangle_angled,
                          color: Theme.of(context).buttonColor),
                      title: Text(
                        'Linked Devices',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Help())),
                    child: ListTile(
                      leading: Icon(Icons.help_outline,
                          color: Theme.of(context).buttonColor),
                      title: Text(
                        'Help',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Advanced())),
                    child: ListTile(
                      leading: Icon(Icons.help_outline,
                          color: Theme.of(context).buttonColor),
                      title: Text(
                        'Advanced',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "made by Arminodes",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
