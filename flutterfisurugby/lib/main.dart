import 'package:flutter/material.dart';
import 'package:flutterfisurugby/delayed_animation.dart';
import 'package:flutterfisurugby/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FISU Rugby',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}



