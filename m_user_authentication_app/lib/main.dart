import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_user_authentication_app/screens/loginpage.dart';
import 'package:m_user_authentication_app/screens/registrationpage.dart';
import 'package:m_user_authentication_app/screens/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        '/': (context) => LoginPage(),
        'splashscreen': (context) => SplashScreen(),
        'registrationpage': (context) => RegistrationPage(),
      },
    ),
  );
}
