import 'package:flutter/material.dart';
import 'package:test_app/Screens/resetpass_screen.dart';
import 'package:test_app/const.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ResetPassEmail());
  }
}
