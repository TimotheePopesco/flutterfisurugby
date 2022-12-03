import 'package:flutter/material.dart';
import 'package:flutterfisurugby/delayed_animation.dart';
import 'package:flutterfisurugby/welcome_page.dart';

const primary_blue = const Color(0xFF3D5A80);
const secondary_blue = const Color(0xFFE0FBFC);
const primary_red = const Color(0xFFEE6C4D);

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



