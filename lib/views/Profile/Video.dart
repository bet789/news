import 'package:flutter/material.dart';
import './VideoPlayerScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  spin() {
    return SpinKitRotatingPlain(color: Colors.red);
  }

  List<String> image = [
    "assets/images/fusal.jpg",
    "assets/images/psg.jpeg",
    "assets/images/ucl.jpg",
    "assets/images/ronaldinho.jpg",
    "assets/images/tiktok.jpeg"
  ];

  List<String> text = [
    "HIGHLIGHTS | ĐT Panama 2-3 ĐT Việt Nam | Bảng D VCK FIFA Futsal World Cup Lithuania 2021™ | VTV24",
    "HIGHLIGHTS | CLUB BRUGGE - PSG | MESSI - NEYMAR - MBAPPE ĐÂU RỒI?!!! | UCL 2021/22",
    "ĐỘI HÌNH TIÊU BIỂU LƯỢT TRẬN 1 VÒNG BẢNG CHAMPIONS LEAGUE",
    "Ronaldinho Showing His Class in 2008",
    "Tik Tok Đội Tuyển Việt Nam - Tổng Hợp Những Video Cool Ngầu Và Hài Hước Của Đổi Tuyển Việt Nam #4",
  ];

  List<String> link = [
    "https://www.youtube.com/watch?v=sHD_jG-GdcU&ab_channel=VTV24",
    "https://www.youtube.com/watch?v=DjrXSiFWsTI&ab_channel=FPTB%C3%B3ng%C4%90%C3%A1",
    "https://www.youtube.com/watch?v=iKSuQ6WzK58&ab_channel=BLVAnhQu%C3%A2nNews",
    "https://www.youtube.com/watch?v=mvRs2BmfLe4&ab_channel=AlsidoFootball",
    "https://www.youtube.com/watch?v=EOfkXqcAPo0&ab_channel=TikTok%C4%90%E1%BB%99iTuy%E1%BB%83nVi%E1%BB%87tNam",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? Color(0xFF282828)
                : Colors.white,
            automaticallyImplyLeading: false,
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              height: size.height * .04,
              width: size.width * .35,
              // child: ClipRRect(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              //   child: Image.asset(
              //     "assets/images/LOGO.png",
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPlayerScreen(link, index),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 13, bottom: 20),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(
                            image[index],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.77,
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Wrap(
                                  children: <Widget>[
                                    Text(
                                      text[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "TIN MỚI",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Icon(Icons.more_vert))
                    ],
                  ),
                ],
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
