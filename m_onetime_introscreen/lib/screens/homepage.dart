import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0d5279),
        title: const Text('Home Screen'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
