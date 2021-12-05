import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsProvider =
    ChangeNotifierProvider((ref) => SettingsProvider(ref.read));

class SettingsProvider extends ChangeNotifier {
  bool isDark = false;
  final Reader ref;

  SettingsProvider(this.ref);

  toggleDarkMode() {
    isDark = !isDark;
    notifyListeners();
  }
}
