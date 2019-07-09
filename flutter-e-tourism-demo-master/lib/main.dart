import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Etourism());

class Etourism extends StatelessWidget {
  const Etourism({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'E-Tourism',
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Image.asset(            
                     'images/a.jpg',            
                       width: 600,            
                      height: 240,            
                      fit: BoxFit.cover,            
                    ),
            titleSection,

            Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(color, Icons.call, 'CALL'),
                _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
                _buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            ),
          ),
          textSection,
        ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Lumbini',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text('The Birth Place of Gautam Buddha',
            style: TextStyle(
              color: Colors.blueGrey[500]
            ),
            ),
          ],
        ),
      ),
      Text('41'),
      Icon(
        Icons.star,
        color:Colors.red[500],
      )
    ],
  ),
);


 Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: 
  Column(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20.0),

        child: Text('About',
        style: TextStyle(
        color:Colors.black,
        fontSize: 20.0,
        ),
        ),
      ),
      Container(
        child: Text(
          'Lumbinī is a Buddhist pilgrimage site in the Rupandehi District of Province No. 5 in Nepal. '
          'It is the place where, according to Buddhist tradition, Queen Mahamayadevi gave birth'
           'to Siddhartha Gautama in 563 BCE.',
          softWrap: true,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.justify,
          style: TextStyle(
            letterSpacing: 1.0,
            wordSpacing: 3.0,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top:20.0),
         child:RaisedButton(
           color: Colors.purpleAccent,
            onPressed: () {},
            child: const Text('Read More',
             style: TextStyle(
               fontSize: 15,
               color: Colors.white
               ),
               ),
          ) 
      )
    ],
  ),
);
