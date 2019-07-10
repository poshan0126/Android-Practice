import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image.asset('images/background.jpg', height: 100.0,),
        new Image.asset('images/tiger.jpg', height: 100.0,),
      ],
    );
  }
}