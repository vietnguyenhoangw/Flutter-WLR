import 'package:flutter/material.dart';

// child components
import 'components/body.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  WelcomeScreenState createState() {
    return new WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Body());
  }
}
