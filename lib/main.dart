import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Home_Screen.dart';
import 'package:instagram_clone/Screens/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatorScreen(),
    );
  }
}
