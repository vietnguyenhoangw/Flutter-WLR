import 'package:flutter/material.dart';

// constants
import 'package:WelcomeLoginRegister/Constants/Constants.dart';

class WLRTextFieldIcon extends StatelessWidget {
  final Widget child;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool isPassword;
  const WLRTextFieldIcon({
    Key key,
    this.isPassword = false,
    this.child,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: violetLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        textAlignVertical: isPassword ? TextAlignVertical.center : null,
        obscureText: isPassword,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: violetPrimaryColor,
          ),
          suffixIcon: isPassword
              ? Icon(
                  Icons.visibility,
                  color: violetPrimaryColor,
                )
              : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
