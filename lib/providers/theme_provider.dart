import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/dark_theme_prefs.dart';

class ThemeProvider with ChangeNotifier {
  String currentTheme = 'system';

  ThemeMode get getThemeMode {
    if (currentTheme == 'light') {
      return ThemeMode.light;
    } else if (currentTheme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  Future<void> changeTheme(String theme) async {
    final SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    await _sharedPref.setString('theme', theme);
    currentTheme = theme;
    notifyListeners();
  }

  initialize() async {
    final SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    currentTheme = _sharedPref.getString('theme') ?? 'system';
    notifyListeners();
  }
}
