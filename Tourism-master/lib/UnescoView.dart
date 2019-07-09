import 'package:flutter/material.dart';
class UnescoView extends StatelessWidget {
  String imgURL;
  UnescoView({this.imgURL});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: SizedBox(
        child: Container(
          height: 150,
         width: 164,
         decoration: BoxDecoration(

             image: DecorationImage(
               image: NetworkImage(imgURL), fit: BoxFit.cover,
             ),
               borderRadius:BorderRadius.circular(16),
         ),),
      ),
    );
  }
}
