import 'package:blah/Providers/ThemeProvider.dart';
import 'package:blah/Screens/HomeScreen.dart';
import 'package:blah/Settings/Chats.dart';
import 'package:blah/Settings/Privacy.dart';
import 'package:blah/Settings/data&Storage.dart';
import 'package:flutter/material.dart';
import 'package:blah/constant.dart';
import 'package:provider/provider.dart';
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
      body: GestureDetector(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/greg.jpg'),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "+00 000 0000000",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .color),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        Icons.chat_bubble_outline,
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
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SettingChat())),
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
                    onTap:  () => Navigator.push(
    context, MaterialPageRoute(builder: (_) => DataNStorage())),
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
                    onTap: () {},
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
                        color: Theme.of(context).textTheme.bodyText1.color,
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
