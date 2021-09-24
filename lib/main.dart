import 'package:flutter/material.dart';
// import 'login_profile/HomePage.dart';
// import 'login_profile/pages/Launcher.dart';
import 'login_profile/LoginPage.dart';
// import 'login_profile/ProfilePage.dart';
import 'login_profile/RegisterPage.dart';
import 'bottomNav.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'admin/AdminPage.dart';

String token;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  token = prefs.getString('token');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        // "/": (context) => LoginPage(),
        '/': (context) => token == null
            ? LoginPage(
                backgroundColor: Color(0xff00BCD1),
              )
            : BottomNav(),
        "/home": (context) => BottomNav(),
        "/login": (context) => LoginPage(
              backgroundColor: Color(0xff00BCD1),
            ),
        "/register": (context) => RegisterPage(),
        "/admin": (context) => AdminPage(),
        // "/launcher": (context) => Launcher(),
        // "/profile": (context) => ProfilePage(),
      },
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:news_app/bottomNav.dart';
// import 'login_signup/login_page.dart';
// import 'login_profile/login_profile.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter News',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: LoginPage(),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'bottomNav.dart';

// void main() {
//   runApp(MaterialApp(home: Myapp()));
// }

// class Myapp extends StatefulWidget {
//   @override
//   _MyappState createState() => _MyappState();
// }

// class _MyappState extends State<Myapp> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         height: height,
//         width: width,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: width,
//                 height: height * 0.45,
//                 child: Image.asset(
//                   'assets/yoga.png',
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Login',
//                       style: TextStyle(
//                           fontSize: 25.0, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Email',
//                   suffixIcon: Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Forget password?',
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     RaisedButton(
//                         child: Text('Login'),
//                         color: Color(0xffEE7B23),
//                         // onPressed: () {},
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => BottomNav()),
//                           );
//                         }),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Second()));
//                 },
//                 child: Text.rich(
//                   TextSpan(text: 'Don\'t have an account', children: [
//                     TextSpan(
//                       text: 'Signup',
//                       style: TextStyle(color: Color(0xffEE7B23)),
//                     ),
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Second extends StatefulWidget {
//   @override
//   _SecondState createState() => _SecondState();
// }

// class _SecondState extends State<Second> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         height: height,
//         width: width,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: width,
//                 height: height * 0.45,
//                 child: Image.asset(
//                   'assets/play.png',
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Signup',
//                       style: TextStyle(
//                           fontSize: 25.0, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Email',
//                   suffixIcon: Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Forget password?',
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     RaisedButton(
//                       child: Text('Signup'),
//                       color: Color(0xffEE7B23),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Myapp()));
//                 },
//                 child: Text.rich(
//                   TextSpan(text: 'Already have an account', children: [
//                     TextSpan(
//                       text: 'Signin',
//                       style: TextStyle(color: Color(0xffEE7B23)),
//                     ),
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
