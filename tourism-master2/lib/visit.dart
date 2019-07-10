import 'package:flutter/material.dart';

class Places extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(8.0),
      child: new Container(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Places must visit",
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            new Text(
              "Tiger Hill",
              style: const TextStyle(fontSize: 20.0),),
            new Text(
              "Batasia Loop",
              style: const TextStyle(fontSize: 20.0),),
            new Text(
              "Tea Gardens",
              style: const TextStyle(fontSize: 20.0),),
          ],
        ),
      )
    );
  }
}