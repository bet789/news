import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_login_profile/pages/Background.dart';
import 'LoginPage.dart';
// import 'CaptchaAPI.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'Background.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  _register(var values) async {
    print(values);

    var url = Uri.parse('https://api.thana.in.th/workshop/users');
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: convert.jsonEncode({
          'username': values['username'],
          'password': values['password'],

          // 'name': values['name'],
          // 'surname': values['surname']
        }));

    var body = convert.jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(response.body);
      // print(body['message']);
      final snackBar = SnackBar(content: Text(body['username']));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Future.delayed(Duration(seconds: 3), () {
        Navigator.pop(context);
      });
    } else {
      print(response.body);
      print(body['message']);
      final snackBar = SnackBar(content: Text(body['message']));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  // late Future<Album> futureAlbum;
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Đăng ký',

                // style: TextStyle(fontSize: 20, color: Colors.white)
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    fontSize: 36),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: FormBuilder(
                key: _formKey,
                initialValue: {
                  'username': '',
                  'password': '',
                  // 'name': '',
                  // 'surname': '',
                },
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
                            errorText: 'please insert email'),
                        FormBuilderValidators.email(context),
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
                            errorText: 'not null'),
                      ]),
                    ),
                    SizedBox(height: 15),
                    // FormBuilderTextField(
                    //   name: 'name',
                    //   decoration: InputDecoration(
                    //     labelText: 'Mã xác thực',
                    //     filled: true,
                    //   ),
                    //   validator: FormBuilderValidators.compose([
                    //     FormBuilderValidators.required(context,
                    //         errorText: 'not null'),
                    //   ]),
                    // ),

                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              print('register');
                              _formKey.currentState.save();

                              _register(_formKey.currentState.value);
                              Navigator.pushNamed(context, '/login');
                            } else {
                              print("validation failed");
                            }
                          },
                          minWidth: 80,
                          child: Text(
                            'Đăng ký',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          padding: EdgeInsets.only(
                              left: 38, right: 38, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        )),
                      ],
                    ),
                    SizedBox(height: 28),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Bạn đã có tài khoản. Đăng nhập ngay',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
          // ),
        ),
      ),
    );
  }
}
