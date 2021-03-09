import 'package:flutter/material.dart';


ThemeData darkTheme = ThemeData(
  fontFamily: 'SFPRO',
  primaryColor:
  Colors.black,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
  ),
  buttonColor: Colors.grey.shade200,
  accentColor: Colors.grey.shade700,
  dividerColor: Colors.grey,
  dialogTheme: DialogTheme(backgroundColor: Colors.black),

);


ThemeData lightTheme = ThemeData(
  fontFamily: 'SFPRO',
  primaryColor: Colors.white,
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
    ),
  ),
  buttonColor: Colors.blue.shade900,
  accentColor: Colors.blue,
  dividerColor: Colors.black,
  dialogTheme: DialogTheme(backgroundColor: Colors.white),
);
