import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleThem() {
    _isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
