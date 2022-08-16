import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/user_notifier.dart';
import 'package:state_management/screens/home.dart';

void main() => runApp(MyApp(
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserNotifier()),
  ],
  
  ),
));

class MyApp extends StatelessWidget {
  MyApp(MultiProvider multiProvider);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
        primaryColor: Colors.blue,
        backgroundColor: Color(0xFFDCDCDC),
      ),
      home: Home(),
    );
  }
}