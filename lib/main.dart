import 'package:flutter/material.dart';
import 'package:web_app/home_screen.dart';
import 'package:web_app/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   inputDecorationTheme: kDefaultInputDecorationTheme,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme: AppTheme.themeData(false, context),,
      darkTheme: AppTheme.themeData(true, context),
      home: HomeScreen(),
    );
  }
}
