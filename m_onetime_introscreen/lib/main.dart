import 'package:flutter/material.dart';
import 'package:m_onetime_introscreen/screens/homepage.dart';
import 'package:m_onetime_introscreen/screens/onBoardingPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => OnBoardingPage(),
      'homepage': (context) => HomePage(),
    },
  ));
}
