import 'package:WelcomeLoginRegister/Components/TextFeild/TextFieldWithIcon.dart';
import 'package:flutter/material.dart';

// library
import 'package:flutter_svg/flutter_svg.dart';

// components
import 'package:WelcomeLoginRegister/Components/Buttons/WLRButton.dart';
import '../../Components/Background/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Container(
          width: deviceSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'LOGIN',
                        style: Theme.of(context).textTheme.display1)
                  ])),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: deviceSize.height / 2.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
