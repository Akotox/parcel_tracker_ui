import 'package:flutter/material.dart';
import 'package:xpress/parcel_app_theme.dart';
import 'package:xpress/ui_screens/mainscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpress',
      theme: ParcelAppTheme.lightTheme,
      home: const Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
