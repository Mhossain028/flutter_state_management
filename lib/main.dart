import 'package:flutter/material.dart';
import 'package:state_management/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        ),
        primaryColor: Colors.blue,
        backgroundColor: Color(0xFFDCDCDC),
      ),
      home: Home(),
    );
  }
}