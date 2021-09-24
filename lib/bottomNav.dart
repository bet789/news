import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/views/account_view.dart';
import 'package:news_app/views/favorite_view.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/views/search_view.dart';

import 'views/Profile/Home.dart';
import 'views/Profile/Video.dart';
import 'views/Profile/VideoPlayerScreen.dart';
import 'views/Profile/Profile.dart';
import 'views/Profile/Cateogory.dart';
import 'views/weather/weather_page.dart';
import 'SettingPage/main.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static get setcategory => null;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    HomeView(),
    Cateogory(setcategory),
    WeatherHome(),
    Video(),
    // Profile(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: _navBarList
            .map(
              (e) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  e.icon,
                  width: 24.0,
                ),
                activeIcon: SvgPicture.asset(
                  e.activeIcon,
                  width: 24.0,
                ),
                title: Text(e.title),
              ),
            )
            .toList(),
      ),
    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem({this.icon, this.activeIcon, this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/home_icon-1.svg",
    activeIcon: "assets/home_icon.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/collection.svg",
    activeIcon: "assets/collection-1.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/weather-1.svg",
    activeIcon: "assets/weather.svg",
    title: "Search",
  ),
  NavBarItem(
    icon: "assets/video.svg",
    activeIcon: "assets/video-1.svg",
    title: "Video",
  ),
  NavBarItem(
    icon: "assets/account.svg",
    activeIcon: "assets/account-1.svg",
    title: "Profile",
  ),
];
