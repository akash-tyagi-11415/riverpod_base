import 'package:farm_pik/utilities/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  // Define your default thememode here
  ThemeMode themeMode = ThemeMode.system;

  AppThemeProvider() {
    _init();
  }

  _init() async {
    // Get the stored theme from shared preferences
    int themeIndex = await MySharedPreferences.instance.getIntValue("theme");
    themeMode = ThemeMode.values[themeIndex];
    debugPrint("get themeMode :: $themeMode");
    notifyListeners();
  }

  setTheme(ThemeMode mode) async {
    themeMode = mode;
    // Save the selected theme using shared preferences
    await MySharedPreferences.instance.setIntValue("theme", mode.index);
    debugPrint("set themeMode :: $themeMode");
    notifyListeners();
  }
}
