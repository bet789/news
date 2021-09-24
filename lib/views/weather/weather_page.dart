import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'weather_first_view.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      home: WeatherHome(),
    ));

class WeatherHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return WeatherFirst();
  }
}
