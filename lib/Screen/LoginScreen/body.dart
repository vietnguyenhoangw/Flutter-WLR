import 'package:WelcomeLoginRegister/Components/TextFeild/WLRTextFieldIcon.dart';
import 'package:WelcomeLoginRegister/Screen/LoginScreen/haveAnAccount.dart';
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
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            height: deviceSize.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'LOGIN',
                        style: Theme.of(context).textTheme.display1)
                  ])),
              SizedBox(height: deviceSize.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: deviceSize.height / 2.8,
              ),
              SizedBox(height: deviceSize.height * 0.03),
              WLRTextFieldIcon(
                hintText: 'username',
                onChanged: (value) {},
              ),
              WLRTextFieldIcon(
                hintText: 'username',
                onChanged: (value) {},
              ),
              WLRButton(
                text: 'LOGIN',
                press: () {},
              ),
              SizedBox(height: deviceSize.height * 0.03),
              HaveAnAccountCheck(
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
