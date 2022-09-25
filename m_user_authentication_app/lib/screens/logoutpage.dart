import 'package:flutter/material.dart';

import 'loginpage.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.withOpacity(0.8),
        title: const Text(
          "Welcome Page",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.5),
        ),
        centerTitle: true,
        // actions: [
        //   GestureDetector(
        //       onTap: () {
        //         Navigator.pushAndRemoveUntil(
        //             context,
        //             MaterialPageRoute(builder: (context) => LoginPage()),
        //             (route) => false);
        //       },
        //       child: Icon(Icons.logout))
        // ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to flutter",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.withOpacity(0.8),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false);
                },
                child: Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ))
          ],
        ),
      ),
    );
  }
}
