import 'package:flutter/material.dart';
import 'package:tourism/home.dart';
import 'package:tourism/about.dart';
import 'package:tourism/knowmore.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Tourism",
      home: new Home(),
      routes: <String, WidgetBuilder>{
        "about": (BuildContext context) => new About(),
        "more": (BuildContext context) => new More()
      });
  }
}