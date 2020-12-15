import 'package:dynamic_theme_switcher/style/style.dart';
import 'package:flutter/material.dart';


class DynamicThemeProvider with ChangeNotifier {
  bool isDarkMode = false;
  getDarkMode() => this.isDarkMode;
  void changeDarkMode(isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners(); // Notify all it's listeners about update. If you comment this line then you will see that new added items will not be reflected in the list.  
  }
}

final darkTheme = ThemeData(
  // primarySwatch: Colors.orange[200],
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF212121)
  // backgroundColor: const Color(0xFF212121),
  // accentColor: Colors.white,
  // accentIconTheme: IconThemeData(color: Colors.black),
  // dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  // primarySwatch: Colors.grey,
  primaryColor: basicAppBarColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: basicBackgroundColor
  // backgroundColor: const Color(0xFFE5E5E5),
  // accentColor: Colors.black,
  // accentIconTheme: IconThemeData(color: Colors.white),
  // dividerColor: Colors.white54,
);