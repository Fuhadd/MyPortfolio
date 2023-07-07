import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_app/home_screen.dart';
import 'package:web_app/theme/app_theme.dart';
import 'package:web_app/themes/theme_manager.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends ConsumerStatefulWidget {
  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aminu Fuhad',
      // theme: lightTheme,
      // darkTheme: darkTheme,
      themeMode: ref.watch(themeStateProvider),
      theme: AppTheme.themeData(false, context),
      darkTheme: AppTheme.themeData(true, context),
      home: HomeScreen(),
    );
  }
}
