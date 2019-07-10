import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  
  void _function_placeholder() {
    
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new IconButton(
          icon: new Icon(Icons.list),
          tooltip: 'Know more about this place',
          onPressed: () => Navigator.of(context).pushNamed("more")
        ),
        new IconButton(
          icon: new Icon(Icons.close),
          tooltip: 'Know more about this place',
          onPressed: _function_placeholder,
        )
      ],
    );
  }
}