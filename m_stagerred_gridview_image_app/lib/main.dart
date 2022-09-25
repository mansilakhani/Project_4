import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_stagerred_gridview_image_app/screens/detail_screen.dart';
import 'package:m_stagerred_gridview_image_app/screens/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomePage(),
      'detail_screen': (context) => DetailPage(),
    },
  ));
}
