import 'package:flutter/material.dart';

import 'Constants/constant.dart';
import 'Pages/IntroPage.dart';
import 'Pages/SplashScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'LibreHealth',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData.light(),
      home: AnimatedSplashScreen(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        INTRO_SCREEN: (BuildContext context) => IntroPage(),
      },
    );
  }
}
