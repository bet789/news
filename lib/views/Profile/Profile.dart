import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .01,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: size.height * .04,
                  backgroundImage: NetworkImage(
                      "https://i7.pngguru.com/preview/831/88/865/user-profile-computer-icons-user-interface-mystique.jpg"),
                ),
              ),
              ListTile(
                title: Text("Ciro IT"),
                trailing: Icon(Icons.arrow_drop_down),
                subtitle: Text(
                  "Quản lý tài khoản Google của bạn",
                  style: TextStyle(color: Colors.blue[800]),
                ),
              ),
              Container(
                height: size.height * .001,
                width: double.infinity,
                color: Colors.grey,
              ),
              // ListTile(
              //   leading: Icon(Icons.monetization_on),
              //   title: Text("Paid Membership"),
              // ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Quản lý tài khoản"),
              ),
              ListTile(
                leading: Icon(Icons.group_work),
                title: Text("Bật chế độ ẩn danh"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Liên hệ với chúng tôi"),
              ),
              ListTile(
                leading: Icon(
                  Icons.brightness_4,
                  //size: 28,
                ),
                title: Text(
                  "Thay đổi Theme",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  changeBrightness();
                },
              ),
              Container(
                height: size.height * .001,
                width: double.infinity,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Cài đặt"),
              ),
              Center(
                child: Text("Điều khoản và dịch vụ"),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * .12),
                child: Text(
                  "Version 1.0.0.0",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * .01),
                child: Text(
                  "Được tạo bởi Ciro IT",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;
  final AppBar appBar;

  const CustomAppBar({Key key, this.onTap, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: appBar);
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
