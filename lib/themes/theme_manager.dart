import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDarkMode, WidgetRef ref) {
    ref.read(themeStateProvider.notifier).state =
        isDarkMode ? ThemeMode.dark : ThemeMode.light;
    // _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

final themeStateProvider = StateProvider.autoDispose<ThemeMode>(
  (ref) => ThemeMode.light,
);
