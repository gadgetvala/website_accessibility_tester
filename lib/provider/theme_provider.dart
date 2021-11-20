import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeProvider());

class ThemeProvider extends ChangeNotifier {
  bool isDark = false;

  void switchTheme() {
    isDark = !isDark;

    print(isDark);
    notifyListeners();
  }
}
