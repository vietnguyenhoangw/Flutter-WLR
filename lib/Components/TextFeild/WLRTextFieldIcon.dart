import 'package:flutter/material.dart';

// constants
import 'package:WelcomeLoginRegister/Constants/Constants.dart';

class WLRTextFieldIcon extends StatelessWidget {
  final Widget child;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const WLRTextFieldIcon({
    Key key,
    this.child,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: violetLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: violetPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: violetPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
