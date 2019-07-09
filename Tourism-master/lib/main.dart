import 'package:flutter/material.dart';
import 'home.dart';
void main ()=> runApp(Welcome());
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel Buddy",
      home: Mainpage(),

    );
  }
}