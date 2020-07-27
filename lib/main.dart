import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'Login.dart';

void main() => runApp(Login());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MainPage(),
    );
  }
}






