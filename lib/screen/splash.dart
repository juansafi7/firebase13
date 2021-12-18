import 'dart:async';
import 'package:firebase_app/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  var _visible = true;
  startTime() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, NavigationPage);
  }

  // ignore: non_constant_identifier_names
  void NavigationPage() {
    Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset(
                  'images/apple.png',
                  height: 25.0,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/apple.png',
                width: animation.value * 250,
                height: animation.value * 250,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }
}
