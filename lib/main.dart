import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/user_notifier.dart';
import 'package:state_management/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.blue),
          primaryColor: Colors.blue,
          backgroundColor: const Color(0xFFDCDCDC),
        ),
        home: const Home(),
      ),
    );
  }
}