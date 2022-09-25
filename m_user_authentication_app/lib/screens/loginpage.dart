import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_user_authentication_app/screens/registrationpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  bool passwordvisibility = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    _loadUserEmailPassword(); // get credential
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber.withOpacity(0.8),
          title: const Text(
            "LogIn Page",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.5),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // field(
              //     _emailController, Icon(Icons.email_outlined), "Enter Email"),
              field(_emailController, Icon(Icons.email_outlined), "Enter Email",
                  false),
              const SizedBox(height: 10),
              field(_passwordController, Icon(Icons.lock), "Enter password",
                  passwordvisibility),
              const SizedBox(
                height: 35,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => LogoutPage()));
              //   },
              // child: const Text(
              //   "Login",
              //   style: TextStyle(color: Colors.blue, fontSize: 20),
              // ),
              Container(
                height: 40,
                width: 350,
                child: SizedBox.expand(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.withOpacity(0.7),
                    ),
                    // onPressed: () {
                    //   // Navigator.push(
                    //   //     context,
                    //   //     MaterialPageRoute(
                    //   //         builder: (context) => LogoutPage()));
                    // },
                    onPressed: _navigator,
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              // ),
              SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: Theme(
                      data: ThemeData(
                          unselectedWidgetColor: Color(0xff00C8E8) // Your color
                          ),
                      child: Checkbox(
                          activeColor: const Color(0xff00C8E8),
                          value: _isChecked,
                          onChanged: (value) {
                            _isChecked = value!;
                            SharedPreferences.getInstance().then((prefs) => {
                                  prefs.setBool("remember_me", value),
                                  prefs.setString(
                                      'email', _emailController.text),
                                  prefs.setString(
                                      'password', _passwordController.text),
                                });
                            setState(() {
                              _isChecked = value;
                            });
                          }),
                    )),
                const SizedBox(width: 10.0),
                const Text("Remember Me",
                    style: TextStyle(
                      color: Colors.white,
                      // color: Color(0xff646464),
                      fontSize: 12,
                    ))
              ])
            ]),
          ),
        ));
  }

  field(TextEditingController controller, Icon icon, String label,
      bool obsuretext) {
    return Container(
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
          obscureText: obsuretext,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 8, left: 20),
            border: InputBorder.none,
            suffixIcon: icon,
            labelText: label,
            labelStyle:
                const TextStyle(fontSize: 14, decoration: TextDecoration.none),
          )),
    );
  }

  void _loadUserEmailPassword() async {
    // //print("Load Email");
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;

      // print(_remeberMe);
      // print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        _emailController.text = _email ?? "";
        _passwordController.text = _password ?? "";
      }
    } catch (e) {
      print(e);
    }
    //   sharedPreferences = await SharedPreferences.getInstance();
    //   setState(() {
    //     _isChecked = sharedPreferences.getBool("check")!;
    //     if (_isChecked != null) {
    //       if (_isChecked) {
    //         _emailController.text = sharedPreferences.getString("email")!;
    //         _passwordController.text = sharedPreferences.getString('password')!;
    //         var _remeberMe = sharedPreferences.getBool("remember_me") ?? false;
    //         if (_remeberMe) {
    //           setState(() {
    //             _isChecked = true;
    //           });
    //           _emailController.text = "";
    //           _passwordController.text = "";
    //         }
    //       } else {
    //         _emailController.clear();
    //         _passwordController.clear();
    //         sharedPreferences.clear();
    //       }
    //     } else {
    //       _isChecked = false;
    //     }
    //   });
    // }
  }

  _navigator() {
    if (_emailController.text.length != 0 ||
        _passwordController.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => RegistrationPage()),
          (route) => false);
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text("Enter Email & Password ..."),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            )
          ],
        ),
      );
    }
  }
}
