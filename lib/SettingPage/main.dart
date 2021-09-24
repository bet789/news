import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'constants.dart';
import 'widgets/profile_list_item.dart';
import '../main.dart';

// void main() {
//   runApp(SettingPage());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class SettingPage extends StatefulWidget {
  SettingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppPrimaryColor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarButton(
                        icon: Icons.arrow_back,
                      ),
                      Image.asset("assets/images/admin_icon.png"),
                    ],
                  ),
                ),
                AvatarImage(),
                SizedBox(
                  height: 25,
                ),
                // SocialIcons(),
                Text(
                  'Ciro',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
                // Text(
                //   '@amFOSS',
                //   style: TextStyle(fontWeight: FontWeight.w300),
                // ),
                SizedBox(height: 25),
                // Text(
                //   'Mobile App Developer and Open source enthusiastic',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
                // ),
                ProfileListItems(),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/admin');
                        },
                        child: Text('Đăng nhập với quyền admin',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text('Đăng xuất',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;

  const AppBarButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kAppPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: kLightBlack,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
            BoxShadow(
              color: kWhite,
              offset: Offset(-1, -1),
              blurRadius: 10,
            ),
          ]),
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: avatarDecoration,
      child: Container(
        decoration: avatarDecoration,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/logovnn.png'),
            ),
          ),
        ),
      ),
    );
  }
}

// class SocialIcons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         SocialIcon(
//           color: Color(0xFF102397),
//           iconData: facebook,
//           onPressed: () {},
//         ),
//         SocialIcon(
//           color: Color(0xFFff4f38),
//           iconData: googlePlus,
//           onPressed: () {},
//         ),
//         SocialIcon(
//           color: Color(0xFF38A1F3),
//           iconData: twitter,
//           onPressed: () {},
//         ),
//         SocialIcon(
//           color: Color(0xFF2867B2),
//           iconData: linkedin,
//           onPressed: () {},
//         )
//       ],
//     );
//   }
// }

// class SocialIcon extends StatelessWidget {
//   final Color color;
//   final IconData iconData;
//   final Function onPressed;

//   SocialIcon({this.color, this.iconData, this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return new Padding(
//       padding: EdgeInsets.only(left: 20.0),
//       child: Container(
//         width: 45.0,
//         height: 45.0,
//         decoration: BoxDecoration(shape: BoxShape.circle, color: color),
//         child: RawMaterialButton(
//           shape: CircleBorder(),
//           onPressed: onPressed,
//           child: Icon(iconData, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ProfileListItem(
            icon: LineAwesomeIcons.user_shield,
            text: 'Quyền riêng tư',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.history,
            text: 'Lịch sử xem tin',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.question_circle,
            text: 'Câu hỏi thường gặp',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.cog,
            text: 'Cài đặt',
          ),
          // ProfileListItem(
          //   icon: LineAwesomeIcons.user_plus,
          //   text: 'Invite a Friend',
          // ),
          // ProfileListItem(
          //   icon: LineAwesomeIcons.alternate_sign_out,
          //   text: 'Đăng nhập với admin',
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/admin');
          //   },
          //   hasNavigation: false,
          // ),
        ],
      ),
    );
  }
}
