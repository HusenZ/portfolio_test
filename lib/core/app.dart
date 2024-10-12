import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/theme/theme_manager.dart';
import 'package:portfolio_ui/presentation/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); //private named constructor

  static MyApp instance =
      const MyApp._internal(); // single instance -- singleton

  @override
  State<MyApp> createState() => _MyAppState();

  factory MyApp() => instance; // factory for the class instance
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: getApplicationTheme(),
      );
    });
  }
}
