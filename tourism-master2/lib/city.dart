import 'package:flutter/material.dart';
import 'package:tourism/details.dart';
import 'package:tourism/card_button.dart';
import 'package:tourism/visit.dart';
import 'package:tourism/gallery.dart';
// import 'package:tourism/map.dart';

class City extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          new Image(
            image: new AssetImage("images/tiger.jpg"),
            fit: BoxFit.cover,
            color: Colors.blueAccent.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
          new Padding(
            padding: EdgeInsets.all(8.0),
            child: const Text(
              "Darjeeling is a town and a municipality in the Indian state of West Bengal. It is located in the Lesser Himalayas at an elevation of 6,700 ft (2,042.2 m). It is noted for its tea industry, its views of the Kangchenjunga, the world's third-highest mountain, and the Darjeeling Himalayan Railway, a UNESCO World Heritage Site. Darjeeling is the headquarters of the Darjeeling District which has a partially autonomous status within the state of West Bengal. It is also a popular tourist destination in India.",
              style: const TextStyle(fontSize: 20.0,),
              textAlign: TextAlign.justify,
            ),
          ),
          new Details(),
          new Divider(),
          new Places(),
          new Gallery(),
          new CardButton(),
        ],
      )
    );
  }
}