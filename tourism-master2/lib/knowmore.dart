import 'package:flutter/material.dart';
import 'package:tourism/full_details.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Darjeeling"),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
            color: Colors.blueAccent.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
          new Center(
            child: new Container(
              margin: EdgeInsets.all(12.0),
              child: new FullDetail(),
            ),
          )
        ],
      ),
    );
  }
}