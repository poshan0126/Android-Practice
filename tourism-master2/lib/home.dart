import 'package:flutter/material.dart';
import 'package:tourism/city.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Darjeeling"),
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.info),
              title: new Text("About"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("about");
              },
            ),
            new Divider(color: Colors.black,),
            new ListTile(
              leading: new Icon(Icons.close),
              title: new Text("Close"),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        )
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
              child: new City(),
            ),
          )
        ],
      ),
    );
  }
}