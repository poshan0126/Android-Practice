import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(8.0),
      child: new Container(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Details",
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            new Text(
              "Elevation: 2,042.16 m (6,700.00 ft)",
              style: const TextStyle(fontSize: 20.0),),
            new Text(
              "Type: Hill/Mountain",
              style: const TextStyle(fontSize: 20.0),),
            new Text(
              "District: Darjeeling",
              style: const TextStyle(fontSize: 20.0),),
            new Text(
              "State: West Bengal",
              style: const TextStyle(fontSize: 20.0),)
          ],
        ),
      )
    );
  }
}