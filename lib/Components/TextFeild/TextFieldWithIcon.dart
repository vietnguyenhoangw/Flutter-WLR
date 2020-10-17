import 'package:flutter/material.dart';

// constants
import 'package:WelcomeLoginRegister/Constants/Constants.dart';

class TextFieldWithIcon extends StatelessWidget {
  final Widget child;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const TextFieldWithIcon({
    Key key,
    this.child,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: violetLightColor,
            borderRadius: BorderRadius.circular(29),
          ),
          child: TextField(
            onChanged: onChanged,
            cursorColor: violetPrimaryColor,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: violetPrimaryColor,
              ),
              hintText: hintText,
              border: InputBorder.none,
            ),
          )),
    );
  }
}
