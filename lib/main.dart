import 'package:flutter/material.dart';

import 'screen/login.dart';
import 'screen/splash.dart';
import 'utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => const SplashScreen(),
        LOGIN_SCREEN: (BuildContext context) => const LoginScreen(),
      },
    );
  }
}
