import 'package:blog_app/services/com_link.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  bool get darkTheme {
    return SharedPreferencesService.getDarkTheme();
  }

  set darkTheme(bool value) {
    SharedPreferencesService.setDarkTheme(to: value);
    notifyListeners();
  }
}
