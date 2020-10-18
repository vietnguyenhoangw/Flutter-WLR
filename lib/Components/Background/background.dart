import 'package:flutter/material.dart';

// contants
import 'package:WelcomeLoginRegister/Constants/Constants.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height,
      color: whiteColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image(
                  width: deviceSize.width / 3,
                  image: AssetImage('assets/images/main_top.png'))),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image(
                  width: deviceSize.width * 0.2,
                  image: AssetImage('assets/images/main_bottom.png'))),
          child
        ],
      ),
    );
  }
}
