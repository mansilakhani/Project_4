import 'package:flutter/material.dart';
import 'package:m_user_authentication_app/my_textfield.dart';
import 'package:m_user_authentication_app/screens/logoutpage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  bool pswdvisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber.withOpacity(0.8),
        title: const Text("Registration Page"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Register"),
            const Text("Create new account to get started "),
            const SizedBox(height: 50),
            MyTextField(
              controller2: nameController,
              hintText: "Name",
              inputType: TextInputType.name,
              label: "Enter Name",
            ),
            SizedBox(height: 10),
            MyTextField(
              controller2: emailController,
              hintText: 'Email',
              inputType: TextInputType.emailAddress,
              label: "Enter Email",
            ),
            SizedBox(height: 10),
            MyTextField(
              controller2: phoneController,
              hintText: 'Phone',
              inputType: TextInputType.phone,
              label: "Enter Phone No ",
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xffECEBEB),
                ),
              ),
              child: TextField(
                  controller: pswdController,
                  obscureText: pswdvisibility,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 8, left: 20),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          pswdvisibility = !pswdvisibility;
                        });
                      },
                      icon: Icon(pswdvisibility
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 14, decoration: TextDecoration.none),
                  )),
            ),
            SizedBox(height: 50),
            Center(
              child: SizedBox(
                height: 35,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.withOpacity(0.7),
                    ),
                    onPressed: _navigator_,
                    child: const Text("Register")),
              ),
            )
          ],
        ),
      ),
    );
  }

  _navigator_() {
    if (emailController.text.length != 0 || pswdController.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LogoutPage()),
          (route) => false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text("Enter Email & Password ..."),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("OK"),
                  ),
                ],
              ));
    }
  }
}
