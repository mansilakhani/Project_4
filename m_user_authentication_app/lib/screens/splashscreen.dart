import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Duration duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              alignment: Alignment.center,
              child: Icon(
                Icons.android,
                color: Colors.amber,
                size: 110,
              ),

              // child: Center(
              //   child: ClipOval(
              //     child: Icon(
              //       Icons.android,
              //       color: Colors.amber,
              //       size: 70,
              //     ),
              //   ),
              // ),
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.white.withOpacity(0.2),
              // ),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 4,
            width: 220,
            child: LinearProgressIndicator(
                // color: Colors.grey.withOpacity(0.3),
                ),
          ),
        ],
      ),
    );
  }
}
