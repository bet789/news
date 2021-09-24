import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_login_profile/pages/ScreenArguments.dart';
// import 'RandomNumber.dart';
// import 'AppUrl.dart';
import 'Background.dart';
// import 'CaptchaAPI.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key, Color backgroundColor}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  SharedPreferences prefs;
  // Future<Album> futureAlbum;

  // @override
  // void initState() {
  //   super.initState();
  //   futureAlbum = fetchAlbum();
  // }

  _initPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _initPref();
  // }

  _login(var values) async {
    var url = Uri.parse('https://api.thana.in.th/workshop/login');
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: convert.jsonEncode(
            {'username': values['username'], 'password': values['password']}));

    var body = convert.jsonDecode(response.body);

    if (response.statusCode == 200) {
      print("Logged In");
      print(body['access_token']);

      //save token to pref
      await prefs.setString('token', response.body);
      print(prefs.getString('token'));

      //get profile
      _getProfile();
    } else {
      print(body['message']);

      final snackBar = SnackBar(content: Text(body['message']));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _getProfile() async {
    //get token from pref
    var tokenString = prefs.getString('token');
    var token = convert.jsonDecode(tokenString);
    print(token['access_token']);

    //http get profile
    var url = Uri.parse('https://api.thana.in.th/workshop/getprofile');
    var response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token['access_token']}',
      },
    );
    var body = convert.jsonDecode(response.body);

    if (response.statusCode == 200) {
      print('ok');
      print(response.body);

      // Navigator.pushNamed(context, '/launcher',
      //     arguments: ScreenArguments(
      //       body['userid'],
      //       body['username'],
      //       body['name'],
      //       body['surname'],
      //     ));

      Navigator.pushNamed(
        context,
        '/launcher',
      );
      print(body['username']);

      //save profile to pref
      await prefs.setString('profile', response.body);
    } else {
      print('fail');
      print(body['message']);
    }
  }

  double screenHeight;

  @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // child: Center(
        //     child: SingleChildScrollView(
        // child: Column(
        children: <Widget>[
          // Image(
          //   image: AssetImage('assets/bet.jpg'),
          //   height: 100,
          // ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Đăng nhập',

              // style: TextStyle(fontSize: 20, color: Colors.white)
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                  fontSize: 36),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: size.height * 0.03),

          Container(
            padding: EdgeInsets.all(10),
            child: FormBuilder(
              key: _formKey,
              initialValue: {'username': '', 'password': ''},
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'username',
                    decoration: InputDecoration(
                      labelText: 'Tên đăng nhập',
                      filled: true,
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: 'Hãy nhập tên của bạn'),
                      FormBuilderValidators.email(context),
                      // FormBuilderValidators.numeric(context),
                      // FormBuilderValidators.max(context, 70),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15),
                  FormBuilderTextField(
                    name: 'password',
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      filled: true,
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: 'Hãy nhập mật khẩu của bạn'),
                      FormBuilderValidators.minLength(context, 8,
                          errorText: 'Mật khẩu tối thiểu 8 kí tự'),
                    ]),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: MaterialButton(
                      onPressed: () {
                        _formKey.currentState.save();
                        if (_formKey.currentState.validate() &&
                            'username' != 'admin@gmail.com') {
                          print(_formKey.currentState.value);
                          _login(_formKey.currentState.value);
                          Navigator.pushNamed(context, '/home');
                        } else {
                          print("validation failed");
                        }
                      },
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          left: 38, right: 38, top: 15, bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: MaterialButton(
                  //         onPressed: () {
                  //           if ('username' == 'admin@gmail.com' &&
                  //               'password' == 'admin1234') {
                  //             // ignore: unnecessary_statements, unused_label
                  //             Navigator.pushNamed(context, '/admin');
                  //           }
                  //         },
                  //         child: Text('Đăng nhập với quản trị viên',
                  //             style: TextStyle(
                  //                 color: Colors.lightBlue, fontSize: 22)),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text('Đăng ký tài khoản',
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 22)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
