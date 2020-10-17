import 'package:flutter/material.dart';

// library
import 'package:flutter_svg/flutter_svg.dart';

// components
import 'package:WelcomeLoginRegister/Components/Buttons/WLRButton.dart';
import '../../Components/Background/background.dart';

// constants
import 'package:WelcomeLoginRegister/Constants/Constants.dart';

// screens
import 'package:WelcomeLoginRegister/Screen/LoginScreen/loginScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Background(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 65),
        width: deviceSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'WELCOME BACK HOMIE',
                      style: Theme.of(context).textTheme.display1)
                ])),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: deviceSize.height * 0.45,
            ),
            Column(
              children: <Widget>[
                WLRButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                WLRButton(
                  textColor: violetPrimaryColor,
                  color: violetLightColor,
                  text: "REGISTER",
                  press: () {
                    print('Register');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
