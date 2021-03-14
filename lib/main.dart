import 'package:blah/Providers/ThemeProvider.dart';
import 'package:blah/Screens/CallLogScreen.dart';
import 'package:blah/Screens/HomeScreen.dart';
import 'package:blah/Screens/VoiceGroupCallScreen.dart';
import 'package:blah/Style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(null),

      child: Consumer<ThemeProvider>(
        builder: (BuildContext context,value,Widget child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value.isLight ? darkTheme : lightTheme,
            home:HomeScreen(),
          );
        },
      ),
    );
  }
}