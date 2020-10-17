import 'package:WelcomeLoginRegister/Constants/Constants.dart';
import 'package:flutter/material.dart';

// screens
import 'Screen/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              display1: TextStyle(
                  color: violetPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold))),
      home: WelcomeScreen(),
    );
  }
}
