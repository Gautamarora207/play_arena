import 'package:flutter/material.dart';
import 'package:flutter_assignment/SplashScreen/SplashScreen.dart';
import 'package:flutter_assignment/constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(child: new SplashScreen()),
    );
  }
}
