import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About"),
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
          new Card(
            child: new Center(
              
              child: new Container(
                margin: EdgeInsets.all(12.0),
                child: new Column(
                  children: <Widget>[
                    new Image.network("https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"),
                    new Padding(
                      padding: EdgeInsets.all(8.0),
                      child: new Text("This app is made in Flutter. A Dart Framework by Google for building cross platform mobile apps.",
                      style: new TextStyle(fontSize: 20.0),),
                    ),
                  ],
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}