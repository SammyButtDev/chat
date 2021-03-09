import 'package:flutter/material.dart';


class ThemeProvider with ChangeNotifier {
  bool isLight;

  ThemeProvider(bool isLight) {
    if (isLight != null)
      setTheme(isLight);
    else
      setTheme(false);
  }

  setTheme(bool isLight) async {
    this.isLight = isLight;
    // await setThemePref(isLight);
    notifyListeners();
  }
}