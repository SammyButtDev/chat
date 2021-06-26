import 'package:blah/Providers/ThemeProvider.dart';
import 'package:blah/Screens/LoginScreen.dart';
import 'package:blah/Style.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'camerawidget/camerascreen.dart';



Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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

            darkTheme: darkTheme,
            onGenerateRoute: (RouteSettings settings){
              switch (settings.name){
                case'/':return MaterialWithModalsPageRoute(builder: (_)=>Login(),settings: settings);
              }
            },

          );
        },
      ),
    );
  }
}