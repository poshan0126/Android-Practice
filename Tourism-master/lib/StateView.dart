import 'package:flutter/material.dart';
class StateView extends StatelessWidget {
  String imgURL,Name;
  StateView({this.imgURL,this.Name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: SizedBox(
        child: Container(
          child: Text(this.Name,textAlign: TextAlign.center,),
          height: 150,
          width: 164,
          decoration: BoxDecoration(
//color: Colors.tealAccent,
            image: DecorationImage(
              image: NetworkImage(imgURL), fit: BoxFit.cover,
            ),
            borderRadius:BorderRadius.circular(10),
          ),),
      ),
    );
  }
}
