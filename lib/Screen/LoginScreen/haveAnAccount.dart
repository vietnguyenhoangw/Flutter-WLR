import 'package:WelcomeLoginRegister/Constants/Constants.dart';
import 'package:flutter/material.dart';

class HaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: violetPrimaryColor, fontSize: 16),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
                color: violetPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        )
      ],
    );
  }
}
