import 'dart:convert';

import 'package:flutter/material.dart';
import 'helpers/settings.dart';
import 'main.dart';
import 'models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/strings.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthMode _authMode = AuthMode.SIGNIN;

  final loginTextController = new TextEditingController();
  final passwordTextController = new TextEditingController();
  final yourNameTextController = new TextEditingController();
  final yourEmailTextController = new TextEditingController();
  final yourPasswordTextController = new TextEditingController();

  double screenHeight;

  @override
  void dispose() {
    loginTextController.dispose();
    passwordTextController.dispose();
    yourNameTextController.dispose();
    yourEmailTextController.dispose();
    yourPasswordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            lowerBackgroundImage(context),
            _authMode == AuthMode.SIGNIN
                ? loginCard(context)
                : registrationCard(context),
          ],
        ),
      ),
    );
  }

  Widget loginCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Card(
            color: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 30,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: loginTextController,
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.green, letterSpacing: 3),
                        labelText: "Your Email",
                        floatingLabelBehavior: FloatingLabelBehavior.auto),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordTextController,
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.green, letterSpacing: 3),
                        labelText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.auto),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      RaisedButton(
                        elevation: 12,
                        hoverElevation: 0,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 38, right: 38, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        // onPressed: _executeLogin,
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "Don't have an account ?",
              style: TextStyle(color: Colors.white),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  _authMode = AuthMode.SINGUP;
                });
              },
              textColor: Colors.white,
              child: Text(
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget lowerBackgroundImage(BuildContext context) {
    return Container(
      height: screenHeight,
      child: Image.asset('assets/images/man_on_bridge.jpg',
          filterQuality: FilterQuality.high, fit: BoxFit.cover),
    );
  }

  void _executeLogin() async {
    var prefs = await SharedPreferences.getInstance();

    User user = User.fromJson(jsonDecode(prefs.getString(Strings.user)));

    if (user == null) {
      showDialog(
          builder: (context) => AlertDialog(
                content: Text("Incorrect credentials..."),
              ),
          context: context);
      return;
    }
    if (loginTextController.text == user.login &&
        passwordTextController.text == user.password) {
      Settings.currentUser = user;
      setCurrentTimeAsLastLogged();
      navigateToHomePage(context);
    } else {
      showDialog(
          builder: (context) => AlertDialog(
                content: Text("Incorrect credentials..."),
              ),
          context: context);
    }
  }

  Widget registrationCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 30,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: yourNameTextController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(letterSpacing: 3),
                        labelText: "Your Name",
                        floatingLabelBehavior: FloatingLabelBehavior.auto),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: yourEmailTextController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(letterSpacing: 3),
                        labelText: "Your Email",
                        floatingLabelBehavior: FloatingLabelBehavior.auto),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: yourPasswordTextController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(letterSpacing: 3),
                        labelText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.auto),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password must be at least 8 characters and include a special character and number",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                      ),
                      RaisedButton(
                        elevation: 15,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        color: Color(0xFF4B9DFE),
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 38, right: 38, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: _executeRegistration,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  _authMode = AuthMode.SIGNIN;
                });
              },
              textColor: Colors.white,
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: FlatButton(
            child: Text(
              "Terms & Conditions",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  void _executeRegistration() async {
    var prefs = await SharedPreferences.getInstance();
    var newUser = User(
        fullName: yourNameTextController.text,
        login: yourEmailTextController.text,
        password: yourPasswordTextController.text);

    prefs.setString(Strings.user, jsonEncode(newUser));
    Settings.currentUser = newUser;
    setCurrentTimeAsLastLogged();
    navigateToHomePage(context);
  }

  void navigateToHomePage(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  void setCurrentTimeAsLastLogged() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt(
        Strings.lastTimeQuit, DateTime.now().millisecondsSinceEpoch);
  }
}
