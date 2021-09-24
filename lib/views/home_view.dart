import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/views/popular_tab_view.dart';
import 'package:news_app/views/recent_tab_view.dart';
import 'package:news_app/views/trending_tab_view.dart';
import 'society_tab_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "XIN CHÀO",
                  textAlign: TextAlign.end,
                  style: kNonActiveTabStyle,
                ),
                subtitle: Text(
                  "Ciro IT",
                  textAlign: TextAlign.end,
                  style: kActiveTabStyle,
                ),
                trailing: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/ve.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: [
                    Tab(text: "Tin mới"),
                    Tab(text: "Thể thao trong nước"),
                    Tab(text: "Thể thao quốc tế"),
                    // Tab(text: "Xã hội"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PopularTabView(),
            TrendingTabView(),
            RecentTabView(),
            // SocietyTabView(),
          ],
        ),
      ),
    );
  }
}
